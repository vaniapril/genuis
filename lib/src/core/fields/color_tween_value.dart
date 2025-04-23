import 'package:genuis/src/core/data/value.dart';

class ColorTweenValue extends Value {
  final String beginHex;
  final String endHex;

  ColorTweenValue({
    required this.beginHex,
    required this.endHex,
  });

  @override
  String get code => 'ColorTween(begin: Color($beginHex), end: Color($endHex),)';

  @override
  String get type => 'ColorTween';
}
