import 'package:genuis/src/config/types/token_class_type.dart';
import 'package:genuis/src/core/models/code/code_entities/code_entity.dart';
import 'package:genuis/src/core/models/code/values/colored_value.dart';
import 'package:genuis/src/core/models/code/values/token_value.dart';
import 'package:genuis/src/core/models/module.dart';
import 'package:genuis/src/utils/map_extension.dart';

class ColorExtensionWriter {
  final String colorClassName;
  final String colorFieldName;
  final String? colorRecordClassName;

  ColorExtensionWriter({
    required this.colorFieldName,
    required this.colorClassName,
    this.colorRecordClassName,
  });

  void writeAssetExtensionClass(StringBuffer buffer, Module module, Map<String, Field> fields) {
    final coloredValue = module.rootClass.flattenFields.first.values.values.first;
    final value = coloredValue is ColoredValue ? coloredValue.innerValue : coloredValue;

    final valueType = module.config.tokenClassType == TokenClassType.enum_ && value is TokenValue
        ? value.tokenType
        : value.type;
    final recordClassName = colorRecordClassName ?? '($valueType, Color)';

    buffer.writeln('class $colorClassName {');
    buffer.writeln('final $valueType $colorFieldName;');
    for (final name in fields.keys) {
      buffer.writeln('final Color _$name;');
    }

    buffer.writeln('const $colorClassName._({');
    for (final name in fields.keys) {
      buffer.writeln('required Color $name,');
    }
    buffer.writeln('required this.$colorFieldName,');
    buffer.writeln('})');
    if (fields.isNotEmpty) {
      buffer.writeln(':');
      for (final (index, name) in fields.keys.indexed) {
        buffer.writeln('_$name = $name${index == fields.length - 1 ? '' : ','}');
      }
    }
    buffer.writeln(';');

    buffer.writeln('$colorClassName(UI ui, $valueType $colorFieldName) : this._(');
    for (final (name, field) in fields.iterable) {
      buffer.writeln('$name: ui.${field.path.join('.')},');
    }
    buffer.writeln('value: $colorFieldName,');
    buffer.writeln(');');

    buffer.writeln('');
    buffer.writeln('$colorClassName lerp($colorClassName other, double t){');
    buffer.writeln('if (identical(this, other)) return this;');
    buffer.writeln('return $colorClassName._(');
    for (final name in fields.keys) {
      buffer.writeln('$name: Color.lerp(_$name, other._$name, t) ?? _$name,');
    }
    buffer.writeln('$colorFieldName: ${value.lerpCode(colorFieldName, 'other.$colorFieldName')},');
    buffer.writeln(');');
    buffer.writeln('}');

    for (final name in fields.keys) {
      buffer.writeln(
          '$recordClassName get $name => ${colorRecordClassName ?? ''}($colorFieldName, _$name);');
    }
    buffer.writeln(
        '$recordClassName colored(Color color) => ${colorRecordClassName ?? ''}($colorFieldName, color);');
    buffer.writeln('}');

    if (colorRecordClassName != null) {
      buffer.writeln('class $recordClassName {');
      buffer.writeln('final $valueType $colorFieldName;');
      buffer.writeln('final Color color;');
      buffer.writeln('const $recordClassName(this.$colorFieldName, this.color);');
      buffer.writeln('}');
    }
  }

  void writeTextStyleExtensionClass(StringBuffer buffer, Map<String, Field> fields) {
    buffer.writeln('class $colorClassName extends TextStyle {');
    for (final name in fields.keys) {
      buffer.writeln('final Color _$name;');
    }
    buffer.writeln();
    buffer.writeln('$colorClassName._({');
    for (final name in fields.keys) {
      buffer.writeln('required Color $name,');
    }
    buffer.writeln('required TextStyle style,');
    buffer.writeln('}) :');
    for (final name in fields.keys) {
      buffer.writeln('_$name = $name,');
    }
    buffer.writeln('super(');
    buffer.writeln('inherit: style.inherit,');
    buffer.writeln('color: style.color,');
    buffer.writeln('backgroundColor: style.backgroundColor,');
    buffer.writeln('fontSize: style.fontSize,');
    buffer.writeln('fontWeight: style.fontWeight,');
    buffer.writeln('fontStyle: style.fontStyle,');
    buffer.writeln('letterSpacing: style.letterSpacing,');
    buffer.writeln('wordSpacing: style.wordSpacing,');
    buffer.writeln('textBaseline: style.textBaseline,');
    buffer.writeln('height: style.height,');
    buffer.writeln('leadingDistribution: style.leadingDistribution,');
    buffer.writeln('locale: style.locale,');
    buffer.writeln('foreground: style.foreground,');
    buffer.writeln('background: style.background,');
    buffer.writeln('shadows: style.shadows,');
    buffer.writeln('fontFeatures: style.fontFeatures,');
    buffer.writeln('fontVariations: style.fontVariations,');
    buffer.writeln('decoration: style.decoration,');
    buffer.writeln('decorationColor: style.decorationColor,');
    buffer.writeln('decorationStyle: style.decorationStyle,');
    buffer.writeln('decorationThickness: style.decorationThickness,');
    buffer.writeln('debugLabel: style.debugLabel,');
    buffer.writeln('fontFamily: style.fontFamily,');
    buffer.writeln('overflow: style.overflow,');
    buffer.writeln(');');

    buffer.writeln('$colorClassName(');
    buffer.writeln('UI ui,');
    buffer.writeln('TextStyle style');
    buffer.writeln(') : this._(');
    for (final (name, field) in fields.iterable) {
      buffer.writeln('$name: ui.${field.path.join('.')},');
    }
    buffer.writeln('style: style,');
    buffer.writeln(');');

    buffer.writeln('');
    buffer.writeln('$colorClassName lerp($colorClassName other, double t){');
    buffer.writeln('if (identical(this, other)) return this;');
    buffer.writeln('return $colorClassName._(');
    for (final name in fields.keys) {
      buffer.writeln('$name: Color.lerp(_$name, other._$name, t) ?? _$name,');
    }
    buffer.writeln('style: TextStyle.lerp(this, other, t) ?? this,');
    buffer.writeln(');');
    buffer.writeln('}');

    buffer.writeln();
    for (final name in fields.keys) {
      buffer.writeln('TextStyle get $name => copyWith(color: _$name);');
    }
    buffer.writeln();
    buffer.writeln('TextStyle colored(Color color) => copyWith(color: color);');

    buffer.writeln('}');
  }
}
