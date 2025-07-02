import 'package:genuis/src/core/data/code/value.dart';
import 'package:genuis/src/utils/imports.dart';

class ColoredValue extends Value {
  final String coloredType;
  final String theme;
  final Value innerValue;

  const ColoredValue({
    required this.innerValue,
    required this.coloredType,
    required this.theme,
  });

  @override
  String lerpCode(String arg1, String arg2) => '$arg1.lerp($arg2, t)';

  @override
  String get type => coloredType;

  @override
  Set<String> get imports => {
        Imports.material,
        ...innerValue.imports,
      };

  @override
  String toString() => '$coloredType(UI.$theme, $innerValue)';
}
