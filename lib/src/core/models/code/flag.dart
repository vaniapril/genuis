class Flag {
  final String name;
  final String? value;

  Flag({
    required this.name,
    this.value,
  });

  @override
  String toString() {
    return '$name:$value';
  }
}
