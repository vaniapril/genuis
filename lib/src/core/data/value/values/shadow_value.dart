import 'package:genuis/src/core/data/value/value_type.dart';
import 'package:genuis/src/core/data/value/value.dart';

class ShadowValue extends Value {
  final Value color;
  final String spread;
  final String blur;
  final String dx;
  final String dy;
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
  String get code =>
      '${inset ? 'inset_shadow.' : ''}BoxShadow(color: ${color.code}, spreadRadius: $spread, blurRadius: $blur, offset: Offset($dx, $dy),${inset ? 'inset: true,' : ''})';

  @override
  ValueType get type => ValueType.boxShadow;
}
