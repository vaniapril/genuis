abstract class Value {
  final List<String> flags;

  const Value({
    this.flags = const [],
  });

  String get type;
  String lerpCode(String arg1, String arg2) => 't < 0.5 ? $arg1 : $arg2';
}
