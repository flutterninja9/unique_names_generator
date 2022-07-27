class UniqueNamesGeneratorException implements Exception {
  final String reason;

  UniqueNamesGeneratorException(this.reason);

  @override
  String toString() {
    return reason;
  }
}
