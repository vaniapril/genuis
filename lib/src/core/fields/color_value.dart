import 'package:genuis/src/core/data/value.dart';
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

  @override
  String get type => 'Color';

  static Value? tryParse(String value) {
    final list = value.split(' ');
    if (list.isEmpty || list.length > 2) {
      // TODO(IvanPrylepski): error
    }

    if (list.first.startsWith('\$')) {
      return TokenValue(
        tokenType: 'Tokens',
        valueType: 'Color',
        tokenValue: list.first,
        tokenName: list.first.substring(1).pathCamelCase,
      );
    }

    if (list.where((e) => RegExp(r'#([0-9A-F]{8}|[0-9A-F]{6})').hasMatch(e)).isNotEmpty) {
      // TODO(IvanPrylepski): error
    }

    if (list.length == 1) {
      return ColorValue(
        hex: list.first.hexToBitInt,
      );
    }

    if (list.length == 2) {
      return ColorTweenValue(
        beginHex: list[0].hexToBitInt,
        endHex: list[1].hexToBitInt,
      );
    }

    throw 'Unexpected list: $list';
  }
}
