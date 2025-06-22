import 'package:genuis/src/config/yaml/genuis_config.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/core/data/code/value.dart';
import 'package:genuis/src/core/data/module.dart';
import 'package:genuis/src/utils/map_extension.dart';
import 'package:genuis/src/utils/string_extension.dart';

class ColorExtensionWriter {
  final GenuisConfig config;

  ColorExtensionWriter({
    required this.config,
  });

  void writeAssetExtensionClass(StringBuffer buffer, Module module, Map<String, Field> fields) {
    final themedClassName = 'Themed${module.config.name.upperFirst}';
    final coloredClassName = 'Colored${module.config.name.upperFirst}';

    //todo refactor
    Value? type;
    module.rootClass.forEach((e) => type = e.values.values.first);

    buffer.writeln('class $themedClassName {');
    buffer.writeln('final ${type?.type} value;');
    for (final name in fields.keys) {
      buffer.writeln('final Color _$name;');
    }

    buffer.writeln('const $themedClassName._({');
    for (final name in fields.keys) {
      buffer.writeln('required Color $name,');
    }
    buffer.writeln('required this.value,');
    buffer.writeln('}) :');
    for (final (index, name) in fields.keys.indexed) {
      buffer.writeln('_$name = $name${index == fields.length - 1 ? '' : ','}');
    }
    buffer.writeln(';');

    buffer.writeln('$themedClassName(UI ui, ${type?.type} value) : this._(');
    for (final (name, field) in fields.iterable) {
      buffer.writeln('$name: ui.${field.path.join('.')},');
    }
    buffer.writeln('value: value,');
    buffer.writeln(');');

    buffer.writeln('');
    buffer.writeln('$themedClassName lerp($themedClassName other, double t){');
    buffer.writeln('return $themedClassName._(');
    for (final name in fields.keys) {
      buffer.writeln('$name: Color.lerp(_$name, other._$name, t) ?? _$name,');
    }
    buffer.writeln('value: ${type?.lerpCode('value', 'other.value')},');
    buffer.writeln(');');
    buffer.writeln('}');

    for (final name in fields.keys) {
      buffer.writeln('$coloredClassName get $name => $coloredClassName(value, _$name);');
    }
    buffer.writeln('$coloredClassName colored(Color color) => $coloredClassName(value, color);');
    buffer.writeln('}');

    buffer.writeln('class $coloredClassName {');
    buffer.writeln('final ${type?.type} value;');
    buffer.writeln('final Color color;');
    buffer.writeln('const $coloredClassName(this.value, this.color);');
    buffer.writeln('}');
  }

  void writeTextStyleExtensionClass(StringBuffer buffer, Map<String, Field> fields) {
    buffer.writeln('class ThemedTextStyle extends TextStyle {');
    for (final name in fields.keys) {
      buffer.writeln('final Color _$name;');
    }
    buffer.writeln();
    buffer.writeln('ThemedTextStyle._({');
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

    buffer.writeln('ThemedTextStyle(');
    buffer.writeln('UI ui,');
    buffer.writeln('TextStyle style');
    buffer.writeln(') : this._(');
    for (final (name, field) in fields.iterable) {
      buffer.writeln('$name: ui.${field.path.join('.')},');
    }
    buffer.writeln('style: style,');
    buffer.writeln(');');

    buffer.writeln('');
    buffer.writeln('ThemedTextStyle lerp(ThemedTextStyle other, double t){');
    buffer.writeln('return ThemedTextStyle._(');
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
    buffer.writeln('}');
  }
}
