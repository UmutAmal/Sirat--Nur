import java.net.URI
import java.util.Base64
import java.util.Properties

plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

val releaseKeystoreProperties = Properties().apply {
    val localSigningFile = rootProject.file("key.properties")
    if (localSigningFile.exists()) {
        localSigningFile.inputStream().use { load(it) }
    }
}

fun releaseSigningValue(propertyName: String, environmentName: String): String? {
    val localValue = releaseKeystoreProperties.getProperty(propertyName)?.trim()
    if (!localValue.isNullOrEmpty()) {
        return localValue
    }

    val environmentValue = System.getenv(environmentName)?.trim()
    if (!environmentValue.isNullOrEmpty()) {
        return environmentValue
    }

    return null
}

val releaseStoreFile = releaseSigningValue("storeFile", "SIRAT_UPLOAD_STORE_FILE")
val releaseStorePassword = releaseSigningValue("storePassword", "SIRAT_UPLOAD_STORE_PASSWORD")
val releaseKeyAlias = releaseSigningValue("keyAlias", "SIRAT_UPLOAD_KEY_ALIAS")
val releaseKeyPassword = releaseSigningValue("keyPassword", "SIRAT_UPLOAD_KEY_PASSWORD")
val hasReleaseSigningCredentials =
    !releaseStoreFile.isNullOrEmpty() &&
        !releaseStorePassword.isNullOrEmpty() &&
        !releaseKeyAlias.isNullOrEmpty() &&
        !releaseKeyPassword.isNullOrEmpty()

val requiredStoreDartDefines = listOf(
    "SUPABASE_URL",
    "PLACES_TILE_URL_TEMPLATE",
    "PLACES_OVERPASS_API_URL",
    "QURAN_AUDIO_CLOUDFLARE_BASE_URL",
    "QURAN_AUDIO_GITHUB_URL_TEMPLATE"
)

fun decodeDartDefines(rawDefines: String): Map<String, String> {
    if (rawDefines.isBlank()) {
        return emptyMap()
    }

    return rawDefines.split(",").mapNotNull { encodedDefine ->
        val encoded = encodedDefine.trim()
        if (encoded.isEmpty()) {
            return@mapNotNull null
        }

        val decoded = try {
            String(Base64.getDecoder().decode(encoded), Charsets.UTF_8)
        } catch (error: IllegalArgumentException) {
            throw GradleException("Invalid dart-define encoding for store release config.", error)
        }

        val separator = decoded.indexOf("=")
        if (separator <= 0) {
            null
        } else {
            decoded.substring(0, separator) to decoded.substring(separator + 1)
        }
    }.toMap()
}

fun isCleanHttpsUrl(candidate: String, allowPath: Boolean = true): Boolean {
    val uri = try {
        URI(candidate.trim())
    } catch (_: IllegalArgumentException) {
        return false
    }

    val hasCleanPath = allowPath || uri.rawPath.isNullOrEmpty() || uri.rawPath == "/"
    return uri.scheme == "https" &&
        !uri.host.isNullOrBlank() &&
        uri.rawUserInfo.isNullOrEmpty() &&
        uri.rawQuery.isNullOrEmpty() &&
        uri.rawFragment.isNullOrEmpty() &&
        hasCleanPath
}

fun hostMatchesAny(host: String, blockedHosts: List<String>): Boolean {
    val normalizedHost = host.lowercase()
    return blockedHosts.any { blockedHost ->
        normalizedHost == blockedHost || normalizedHost.endsWith(".$blockedHost")
    }
}

fun isBlockedTileHost(host: String): Boolean = hostMatchesAny(
    host,
    listOf(
        "tile.openstreetmap.org",
        "tile.openstreetmap.de"
    )
)

fun isBlockedOverpassHost(host: String): Boolean = hostMatchesAny(
    host,
    listOf(
        "overpass-api.de",
        "overpass.kumi.systems",
        "overpass.openstreetmap.fr",
        "overpass.openstreetmap.ru",
        "overpass.osm.ch",
        "overpass.osm.rambler.ru"
    )
)

fun isValidTileTemplate(template: String): Boolean {
    val trimmed = template.trim()
    if (
        trimmed.isEmpty() ||
        !trimmed.contains("{z}") ||
        !trimmed.contains("{x}") ||
        !trimmed.contains("{y}")
    ) {
        return false
    }

    val probeUrl = trimmed
        .replace("{z}", "0")
        .replace("{x}", "0")
        .replace("{y}", "0")
        .replace("{s}", "a")
    val uri = try {
        URI(probeUrl)
    } catch (_: IllegalArgumentException) {
        return false
    }

    return isCleanHttpsUrl(probeUrl) && !isBlockedTileHost(uri.host)
}

fun isValidOverpassEndpoint(endpoint: String): Boolean {
    val trimmed = endpoint.trim()
    val uri = try {
        URI(trimmed)
    } catch (_: IllegalArgumentException) {
        return false
    }

    return isCleanHttpsUrl(trimmed) && !isBlockedOverpassHost(uri.host)
}

fun isValidGithubQuranAudioTemplate(template: String): Boolean {
    val trimmed = template.trim()
    if (
        trimmed.isEmpty() ||
        !trimmed.contains("{reciter}") ||
        !trimmed.contains("{surah}")
    ) {
        return false
    }

    val probeUrl = trimmed
        .replace("{reciter}", "abdul_basit_murattal")
        .replace("{surah}", "001")
        .replace("{file}", "001.mp3")
        .replace("{path}", "abdul_basit_murattal/001.mp3")

    return isCleanHttpsUrl(probeUrl)
}

android {
    namespace = "com.umutamal.sirat_i_nur"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        isCoreLibraryDesugaringEnabled = true
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    defaultConfig {
        applicationId = "com.umutamal.sirat_i_nur"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    signingConfigs {
        if (hasReleaseSigningCredentials) {
            create("release") {
                storeFile = file(releaseStoreFile!!)
                storePassword = releaseStorePassword
                keyAlias = releaseKeyAlias
                keyPassword = releaseKeyPassword
            }
        }
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.findByName("release")
        }
    }

    lint {
        checkReleaseBuilds = true
        abortOnError = true
    }
}

tasks.register("validateStoreReleaseSigning") {
    group = "verification"
    description = "Fails release packaging when the upload keystore is missing."

    doLast {
        if (!hasReleaseSigningCredentials) {
            throw GradleException(
                "Store release signing is not configured. Add android/key.properties " +
                    "or SIRAT_UPLOAD_* environment variables; debug signing is forbidden for release."
            )
        }

        val releaseStore = file(releaseStoreFile!!)
        if (!releaseStore.isFile) {
            throw GradleException("Release keystore file does not exist: ${releaseStore.path}")
        }
    }
}

tasks.register("validateStoreReleaseRuntimeConfig") {
    group = "verification"
    description = "Fails release packaging when required runtime dart-defines are missing or unsafe."

    doLast {
        val rawDefines = (project.findProperty("dart-defines") as String?)?.trim().orEmpty()
        val dartDefines = decodeDartDefines(rawDefines)
        val missingDefines = requiredStoreDartDefines.filter {
            dartDefines[it]?.trim().isNullOrEmpty()
        }

        if (missingDefines.isNotEmpty()) {
            throw GradleException(
                "Store release runtime config is missing dart-defines: ${missingDefines.joinToString(", ")}. " +
                    "Use tool/build_store_appbundle.ps1 so production Supabase, Places, and Quran audio endpoints are injected."
            )
        }

        if (
            dartDefines["SUPABASE_PUBLISHABLE_KEY"]?.trim().isNullOrEmpty() &&
            dartDefines["SUPABASE_ANON_KEY"]?.trim().isNullOrEmpty()
        ) {
            throw GradleException(
                "Store release runtime config is missing dart-defines: SUPABASE_PUBLISHABLE_KEY " +
                    "(or legacy SUPABASE_ANON_KEY)."
            )
        }

        if (!isCleanHttpsUrl(dartDefines.getValue("SUPABASE_URL"), allowPath = false)) {
            throw GradleException("SUPABASE_URL must be a clean HTTPS project origin without user info, path, query, or fragment.")
        }

        if (!isCleanHttpsUrl(dartDefines.getValue("QURAN_AUDIO_CLOUDFLARE_BASE_URL"))) {
            throw GradleException("QURAN_AUDIO_CLOUDFLARE_BASE_URL must be a clean HTTPS base URL without user info, query, or fragment.")
        }

        if (!isValidGithubQuranAudioTemplate(dartDefines.getValue("QURAN_AUDIO_GITHUB_URL_TEMPLATE"))) {
            throw GradleException(
                "QURAN_AUDIO_GITHUB_URL_TEMPLATE must be a clean HTTPS URL template and include {reciter} and {surah}."
            )
        }

        if (!isValidTileTemplate(dartDefines.getValue("PLACES_TILE_URL_TEMPLATE"))) {
            throw GradleException(
                "PLACES_TILE_URL_TEMPLATE must be an HTTPS tile template with {z}/{x}/{y}, " +
                    "no query/user-info/fragment, and no public OpenStreetMap tile host."
            )
        }

        if (!isValidOverpassEndpoint(dartDefines.getValue("PLACES_OVERPASS_API_URL"))) {
            throw GradleException(
                "PLACES_OVERPASS_API_URL must be a clean HTTPS proxy/provider endpoint and must not use a public Overpass host."
            )
        }
    }
}

tasks.matching {
    it.name == "bundleRelease" || it.name == "assembleRelease"
}.configureEach {
    dependsOn("validateStoreReleaseSigning")
    dependsOn("validateStoreReleaseRuntimeConfig")
}

flutter {
    source = "../.."
}

dependencies {
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.4")
}
