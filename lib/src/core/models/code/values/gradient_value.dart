import 'package:genuis/src/core/models/code/value.dart';
import 'package:genuis/src/utils/imports.dart';

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
  String lerpCode(String arg1, String arg2) => 'LinearGradient.lerp($arg1, $arg2, t) ?? $arg2';

  @override
  String get type => 'LinearGradient';

  @override
  Set<String> get imports => {
        Imports.material,
        ...begin.imports,
        ...end.imports,
        ...colors.expand((e) => e.imports),
      };

  @override
  String toString() =>
      "const LinearGradient(begin: $begin, end: $end, colors: [${colors.map((e) => '$e,').join()}],)";
}
