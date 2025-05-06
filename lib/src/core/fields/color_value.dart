import 'package:genuis/src/core/data/value/value.dart';
import 'package:genuis/src/core/fields/color_tween_value.dart';
import 'package:genuis/src/core/fields/token_value.dart';
import 'package:genuis/src/utils/string_extension.dart';

class ColorValue extends Value {
  final String hex;

  ColorValue({
    required this.hex,
  });

  @override
  String get code => 'Color($hex)';

  static Value? tryParse(String value) {
    
  }
}
