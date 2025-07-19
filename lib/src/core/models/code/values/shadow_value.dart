import 'package:genuis/src/core/models/code/value.dart';
import 'package:genuis/src/utils/imports.dart';

class ShadowValue extends Value {
  final Value color;
  final Value spread;
  final Value blur;
  final Value dx;
  final Value dy;
  final bool inset;

  ShadowValue({
    required this.color,
    required this.spread,
    required this.blur,
    required this.dx,
    required this.dy,
    required this.inset,
  });

  @override
  String lerpCode(String arg1, String arg2) =>
      '${inset ? 'inset_shadow.' : ''}BoxShadow.lerp($arg1, $arg2, t) ?? $arg2';

  @override
  String get type => '${inset ? 'inset_shadow.' : ''}BoxShadow';

  @override
  Set<String> get imports => {
        inset ? Imports.flutterInsetShadow : Imports.material,
        ...color.imports,
        ...spread.imports,
        ...blur.imports,
        ...dx.imports,
        ...dy.imports,
      };

  @override
  String toString() =>
      '${inset ? 'inset_shadow.' : ''}BoxShadow(color: $color, spreadRadius: $spread, blurRadius: $blur, offset: Offset($dx, $dy),${inset ? 'inset: true,' : ''})';
}
