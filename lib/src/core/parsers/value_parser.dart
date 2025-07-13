import 'package:genuis/src/config/types/element_type.dart';
import 'package:genuis/src/config/types/token_class_type.dart';
import 'package:genuis/src/core/data/code/flag.dart';
import 'package:genuis/src/core/data/code/value.dart';
import 'package:genuis/src/core/data/code/values/alignment_value.dart';
import 'package:genuis/src/core/data/code/values/blur_value.dart';
import 'package:genuis/src/core/data/code/values/color_value.dart';
import 'package:genuis/src/core/data/code/values/gradient_value.dart';
import 'package:genuis/src/core/data/code/values/double_value.dart';
import 'package:genuis/src/core/data/code/values/int_value.dart';
import 'package:genuis/src/core/data/code/values/shadow_value.dart';
import 'package:genuis/src/core/data/code/values/string_value.dart';
import 'package:genuis/src/core/data/code/values/text_style_value.dart';
import 'package:genuis/src/core/data/code/values/token_value.dart';
import 'package:genuis/src/core/data/token.dart';
import 'package:genuis/src/utils/string_extension.dart';

class ValueParser {
  final ElementType type;
  final List<Token> tokens;

  ValueParser({
    required this.type,
    this.tokens = const [],
  });

  static List<String> _split(String value) {
    List<String> list = [];

    while (value.contains("'")) {
      final start = value.indexOf("'");
      final end = value.indexOf("'", start + 1);

      if (start == -1 || end == -1) break;

      list.addAll(value.substring(0, start).split(' '));
      list.add(value.substring(start, end + 1));

      value = value.substring(end + 1);
    }

    list.addAll(value.split(' '));

    return list.where((e) => e.isNotEmpty).toList();
  }

  Value parse(String value) {
    final args = _split(value);

    return switch (type) {
      ElementType.blur => _parseBlur(args),
      ElementType.color => _parseColor(args),
      ElementType.font => _parseFont(args),
      ElementType.shadow => _parseShadow(args),
      ElementType.asset => _parseAsset(args),
      ElementType.number => _parseNumber(args),
    };
  }

  Flag _parseFlag(String arg) {
    if (arg.contains(':')) {
      final name = arg.substring(0, arg.indexOf(':'));
      final value = arg.substring(arg.indexOf(':') + 1);

      return Flag(
        name: name,
        value: value,
      );
    } else {
      return Flag(
        name: arg,
      );
    }
  }

  TokenValue _parseToken<T extends Value>(String arg, {List<Flag> flags = const []}) {
    arg = arg.substring(1);

    final tokenName = arg.substring(0, arg.indexOf('.'));
    final name = arg.substring(arg.indexOf('.') + 1).camelCase.named;

    final token = tokens.firstWhere((e) => e.config.name == tokenName);

    for (final field in token.fields) {
      if (field.name == name) {
        return TokenValue(
          tokenType: token.config.className,
          // TODO(vaniapril): name.value ???
          tokenName: token.config.classType == TokenClassType.enum_ ? '$name.value' : name,
          innerValue: field.values.values.first,
          flags: flags,
          additionalImports: token.import,
        );
      }
    }

    throw 'Unexpected token: $name';
  }

  Value _parseBlur(List<String> args) {
    if (args.length != 1) throw 'Invalid blur args: $args';

    if (args[0].startsWith('\$')) {
      return _parseToken<DoubleValue>(args[0]);
    }

    final sigma = _parseDouble(args[0]);

    return BlurValue(
      sigma: sigma,
    );
  }

  Value _parseColor(List<String> args) {
    if (args.isEmpty) throw 'Invalid color args: $args';

    final flags = args.sublist(1).map((e) => _parseFlag(e)).toList();

    if (args[0].startsWith('\$')) {
      return _parseToken<ColorValue>(args[0], flags: flags);
    }

    if (!RegExp(r'#([0-9A-Fa-f]{8}|[0-9A-Fa-f]{6})').hasMatch(args[0])) {
      throw 'Invalid color value: ${args[0]}';
    }

    return ColorValue(
      hex: args[0].hexToBitInt,
      flags: flags,
    );
  }

  Value _parseDouble(String value) {
    if (value.startsWith('\$')) {
      return _parseToken<DoubleValue>(value);
    }

    final number = double.tryParse(value.replaceAll('px', ''));

    if (number == null) throw 'Invalid double value: $value';

    return DoubleValue(
      value: number,
    );
  }

  Value _parseInt(String value) {
    if (value.startsWith('\$')) {
      return _parseToken<DoubleValue>(value);
    }

    final number = int.tryParse(value.replaceAll('w', ''));

    if (number == null) throw 'Invalid int value: $value';

    return IntValue(
      value: number.toString(),
    );
  }

  Value _parseString(String value) {
    if (value.startsWith('\$')) {
      return _parseToken<StringValue>(value);
    }

    if (!value.startsWith("'") || !value.endsWith("'")) {
      throw 'Invalid string value: $value';
    }

    return StringValue(
      value: value.substring(1, value.length - 1),
    );
  }

  Value? _tryParseAlignmentString(String arg) {
    return switch (arg) {
      'topLeft' => AlignmentValue.topLeft,
      'topCenter' => AlignmentValue.topCenter,
      'topRight' => AlignmentValue.topRight,
      'centerLeft' => AlignmentValue.centerLeft,
      'center' => AlignmentValue.center,
      'centerRight' => AlignmentValue.centerRight,
      'bottomLeft' => AlignmentValue.bottomLeft,
      'bottomCenter' => AlignmentValue.bottomCenter,
      'bottomRight' => AlignmentValue.bottomRight,
      _ => null,
    };
  }

  Value? _tryParseAlignmentDouble(List<String> args) {
    if (args.length == 2) {
      final x = _parseDouble(args[0]);
      final y = _parseDouble(args[1]);

      return AlignmentValue(x: x, y: y);
    }

    return null;
  }

  Value _parseFont(List<String> args) {
    if (args.length < 4) throw 'Invalid font args: $args';

    final family = _parseString(args[0]);
    final weight = _parseInt(args[1]);
    final size = _parseDouble(args[2]);
    final height = _parseDouble(args[3]);
    Value? spacing;
    try {
      spacing = args.length > 4 ? _parseDouble(args[4]) : null;
    } catch (_) {
      spacing = null;
    }
    final italic = args.last == 'italic';

    return TextStyleValue(
      family: family,
      // TODO(vaniapril): check 100,200,300,400,500,600,700,800,900
      weight: weight,
      size: size,
      height: height,
      spacing: spacing,
      italic: italic,
    );
  }

  Value parseGradient(List<String> args) {
    if (args.length < 3) throw 'Invalid gradient args: $args';

    Value? begin = _tryParseAlignmentString(args[0]);
    if (begin == null) {
      begin = _tryParseAlignmentDouble(args.sublist(0, 2));
      args = args.sublist(2);
    } else {
      args = args.sublist(1);
    }

    Value? end = _tryParseAlignmentString(args[0]);
    if (end == null) {
      end = _tryParseAlignmentDouble(args.sublist(0, 2));
      args = args.sublist(2);
    } else {
      args = args.sublist(1);
    }

    if (begin == null || end == null) throw 'Invalid gradient args: $args';

    return GradientValue(
      begin: begin,
      end: end,
      colors: args.map((e) => _parseColor([e])).toList(),
    );
  }

  Value _parseShadow(List<String> args) {
    if (args.length < 5) throw 'Invalid shadow args: $args';

    final color = _parseColor(args);
    final dx = _parseDouble(args[1]);
    final dy = _parseDouble(args[2]);
    final blur = _parseDouble(args[3]);
    final spread = _parseDouble(args[4]);
    final inset = args.length > 5 && args[5] == 'inset';

    return ShadowValue(
      color: color,
      dx: dx,
      dy: dy,
      blur: blur,
      spread: spread,
      inset: inset,
    );
  }

  Value _parseNumber(List<String> args) {
    if (args.length != 1) throw 'Invalid number args: $args';

    if (args[0].startsWith('\$')) {
      return _parseToken<DoubleValue>(args[0]);
    }

    return _parseDouble(args[0]);
  }

  Value _parseAsset(List<String> args) {
    if (args.length != 1) throw 'Invalid asset args: $args';

    return StringValue(
      value: args[0],
    );
  }
}
