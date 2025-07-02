import 'package:genuis/src/core/data/code/value.dart';
import 'package:genuis/src/utils/imports.dart';

class ColorValue extends Value {
  final String hex;

  const ColorValue({
    super.flags = const [],
    required this.hex,
  });

  @override
  String lerpCode(String arg1, String arg2) => 'Color.lerp($arg1, $arg2, t) ?? $arg2';

  @override
  String get type => 'Color';

  @override
  Set<String> get imports => {
        Imports.material,
      };

  @override
  String toString() => 'Color($hex)';
}
