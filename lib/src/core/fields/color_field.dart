import 'package:genuis/src/core/data/field.dart';
import 'package:genuis/src/core/fields/color_tween_field.dart';
import 'package:genuis/src/core/fields/enum_field.dart';
import 'package:genuis/src/core/fields/token_field.dart';
import 'package:genuis/src/utils/string_extension.dart';

class ColorField extends Field {
  final String hex;

  ColorField({
    required this.hex,
  });

  @override
  String get code => 'Color($hex)';

  @override
  String get type => 'Color';

  static Field? tryParse(String value) {
    final list = value.split(' ');
    if (list.isEmpty || list.length > 2) {
      // TODO(IvanPrylepski): error
    }

    if (list.first.startsWith('\$')) {
      return TokenField(
        tokenType: 'Tokens',
        valueType: 'Color',
        tokenName: list.first.substring(1).pathCamelCase,
      );
    }

    if (list.where((e) => RegExp(r'#([0-9A-F]{8}|[0-9A-F]{6})').hasMatch(e)).isNotEmpty) {
      // TODO(IvanPrylepski): error
    }

    if (list.length == 1) {
      return ColorField(
        hex: list.first.hexToBitInt,
      );
    }

    if (list.length == 2) {
      return ColorTweenField(
        beginHex: list[0].hexToBitInt,
        endHex: list[1].hexToBitInt,
      );
    }

    throw 'Unexpected list: $list';
  }
}
