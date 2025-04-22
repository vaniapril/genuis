extension ListExtension<T> on List<T> {
  bool isEqualIgnoreOrder(List other) {
    if (length != other.length) {
      return false;
    }

    // TODO(IvanPrylepski): Same items in one set????
    if (!toSet().containsAll(other)) {
      return false;
    }

    if (!other.toSet().containsAll(this)) {
      return false;
    }

    return true;
  }

  bool containsAll(List other) {
    for (var e in other) {
      if (!contains(e)) {
        return false;
      }
    }

    return true;
  }

  T? firstWhereOrNull(bool Function(T element) test) {
    return where(test).firstOrNull;
  }
}
