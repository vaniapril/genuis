import 'package:genuis/src/core/data/code/value_type.dart';
import 'package:genuis/src/core/data/code/value.dart';

class GradientValue extends Value {
  final String begin;
  final String end;
  // final String stops;
  final List<Value> colors;

  GradientValue({
    required this.begin,
    required this.end,
    required this.colors,
  });

  @override
  String get code =>
      "const LinearGradient(begin: $begin, end: $end, colors: [${colors.map((e) => '${e.code},').join()}],)";

  @override
  ValueType get type => ValueType.linearGradient;
}
