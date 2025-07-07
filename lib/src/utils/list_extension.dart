extension ListExtension<T> on List<T> {
  T? firstWhereOrNull(bool Function(T element) test) {
    return where(test).firstOrNull;
  }
}
