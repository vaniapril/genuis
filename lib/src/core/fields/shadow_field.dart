import 'package:genuis/src/core/data/field.dart';
import 'package:genuis/src/utils/string_extension.dart';

class ShadowField extends Field {
  final String color;
  final String spread;
  final String blur;
  final String dx;
  final String dy;
  final bool inset;

  ShadowField({
    required this.color,
    required this.spread,
    required this.blur,
    required this.dx,
    required this.dy,
    required this.inset,
  });

  @override
  String get code =>
      '${inset ? 'inset_shadow.' : ''}BoxShadow(color: $color, spreadRadius: $spread, blurRadius: $blur, offset: Offset($dx, $dy),${inset ? 'inset: true,' : ''})';

  @override
  String get type => 'BoxShadow';

  static Field? tryParse(String value) {
    final list = value.split(' ');

    // TODO(IvanPrylepski): refactor

    return ShadowField(
      color: list[0].startsWith('\$')
          ? 'Tokens.${list[0].substring(1).pathCamelCase}.value'
          : 'Color(${list[0].hexToBitInt})',
      dx: list[1].replaceAll('px', ''),
      dy: list[2].replaceAll('px', ''),
      blur: list[3].replaceAll('px', ''),
      spread: list[4].replaceAll('px', ''),
      inset: list.length > 5 && list[5] == 'inset',
    );
  }
}
