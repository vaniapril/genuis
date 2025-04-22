import 'package:genuis/src/core/data/field.dart';

class ColorTweenField extends Field {
  final String beginHex;
  final String endHex;

  ColorTweenField({
    required this.beginHex,
    required this.endHex,
  });

  @override
  String get code => 'ColorTween(begin: Color($beginHex), end: Color($endHex),)';

  @override
  String get type => 'ColorTween';
}
