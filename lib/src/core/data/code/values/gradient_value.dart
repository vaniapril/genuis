import 'package:genuis/src/core/data/code/value.dart';

class GradientValue extends Value {
  final Value begin;
  final Value end;
  // final String stops;
  final List<Value> colors;

  GradientValue({
    required this.begin,
    required this.end,
    required this.colors,
  });

  @override
  String lerpCode(String arg1, String arg2) => '$arg1.lerp($arg2, t)';

  @override
  String get type => 'LinearGradient';

  @override
  String toString() =>
      "const LinearGradient(begin: $begin, end: $end, colors: [${colors.map((e) => '$e,').join()}],)";
}
