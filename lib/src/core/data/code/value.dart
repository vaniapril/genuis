import 'package:genuis/src/core/data/code/value_type.dart';
import 'package:genuis/src/core/data/code/values/blur_value.dart';
import 'package:genuis/src/core/data/code/values/color_value.dart';
import 'package:genuis/src/core/data/code/values/gradient_value.dart';
import 'package:genuis/src/core/data/code/values/num_value.dart';
import 'package:genuis/src/core/data/code/values/shadow_value.dart';
import 'package:genuis/src/core/data/code/values/text_style_value.dart';
import 'package:genuis/src/core/data/code/values/token_value.dart';
import 'package:genuis/src/utils/string_extension.dart';

abstract class Value {
  const Value();

  String get code;
  ValueType get type;

  static Value parseBlur(String value) {
    final list = value.split(' ');

    final sigma = list[0].replaceAll('px', '');

    return BlurValue(
      sigma: sigma,
    );
  }

  static Value parseToken(String value, (String, Value) Function(String name) findToken) {
    final list = value.split(' ');

    final name = list.first.substring(1).camelCase;
    final (tokenType, innerValue) = findToken(name);

    return TokenValue(
      tokenType: tokenType,
      tokenName: name,
      innerValue: innerValue,
    );
  }

  static Value parseColor(String value) {
    final list = value.split(' ');
    if (list.isEmpty || list.length > 2) {
      // TODO(IvanPrylepski): error
    }

    if (list.where((e) => RegExp(r'#([0-9A-F]{8}|[0-9A-F]{6})').hasMatch(e)).isNotEmpty) {
      // TODO(IvanPrylepski): error
    }

    return ColorValue(
      hex: list.first.hexToBitInt,
    );
  }

  static Value parseNum(String value) {
    return NumValue(
      value: value,
    );
  }

  static Value parseFont(String value) {
    final family = value.substring(0, value.indexOf("'", 1) + 1);

    final list = value.substring(value.indexOf("'", 1) + 2).split(' ');

    final String weight = list[0];
    final String size = list[1].replaceAll('px', '');
    final String height = list[2].replaceAll('px', '');
    final String? spacing = list.length > 3 ? list[3].replaceAll('px', '') : null;

    return TextStyleValue(
      family: family,
      weight: weight,
      size: size,
      height: height,
      spacing: spacing,
    );
  }

  static Value parseGradient(String value) {
    final list = value.split(' ');

    return GradientValue(
      begin: 'Alignment.topLeft',
      end: 'Alignment.bottomRight',
      colors: list.sublist(2).map((e) => parseColor(e)).toList(),
    );
  }

  static Value parseShadow(String value) {
    final list = value.split(' ');

    // TODO(IvanPrylepski): refactor

    final color = parseColor(list[0]);
    final dx = list[1].replaceAll('px', '');
    final dy = list[2].replaceAll('px', '');
    final blur = list[3].replaceAll('px', '');
    final spread = list[4].replaceAll('px', '');
    final inset = list.length > 5 && list[5] == 'inset';

    return ShadowValue(
      color: color,
      dx: dx,
      dy: dy,
      blur: blur,
      spread: spread,
      inset: inset,
    );
  }
}
