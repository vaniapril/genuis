import 'package:genuis/src/core/data/code/value.dart';

class IntValue extends Value {
  final String value;

  const IntValue({
    required this.value,
  });

  @override
  String lerpCode(String arg1, String arg2) => '$arg1*(1 - t) + $arg2*t';

  @override
  String get type => 'int';

  @override
  Set<String> get imports => {};

  @override
  String toString() => value;
}
