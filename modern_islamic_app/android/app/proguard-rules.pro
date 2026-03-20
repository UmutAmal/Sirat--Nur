-keep class com.google.mediapipe.** { *; }
-dontwarn com.google.mediapipe.**
-dontwarn com.google.protobuf.**

# Flutter & Plugins
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.embedding.** { *; }
-keep class io.flutter.plugins.** { *; }
-keep class com.google.firebase.** { *; }

# Isar (Critical for local data)
-keep class dev.isar.isar_flutter_libs.** { *; }
-keep class * extends io.isar.IsarLink { *; }
-keep class * extends io.isar.IsarLinks { *; }
-keep @io.isar.Collection class * { *; }
-keep class **.IsarSchema { *; }

# Riverpod & GoRouter
-keep class com.google.android.gms.** { *; }
-keep class * extends androidx.fragment.app.Fragment { *; }
-keep class * extends androidx.lifecycle.ViewModel { *; }

# Play Core & Common problematic libs
-keep class com.google.android.play.core.** { *; }
-dontwarn com.google.android.play.core.**
-dontwarn io.flutter.embedding.engine.deferredcomponents.**

# Obfuscation Hardening
-renamesourcefileattribute SourceFile
-keepattributes SourceFile,LineNumberTable
-keepattributes Signature,Exceptions,*Annotation*
-dontwarn java.lang.invoke.*
-dontwarn **.R$*
