class LibraryStatus {
  final bool dataPackInstalled;
  final int collectionCount;
  final int hadithCount;
  final String? sourceName;
  final String? sourceVersion;
  final String? sourceNotes;
  final int? databaseUserVersion;
  final String? assetPath;

  const LibraryStatus({
    required this.dataPackInstalled,
    required this.collectionCount,
    required this.hadithCount,
    this.sourceName,
    this.sourceVersion,
    this.sourceNotes,
    this.databaseUserVersion,
    this.assetPath,
  });

  String? get dataPackSource => sourceName;
}
