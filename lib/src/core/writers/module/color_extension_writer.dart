import 'package:genuis/src/config/types/token_class_type.dart';
import 'package:genuis/src/core/models/code/code_entities/code_entity.dart';
import 'package:genuis/src/core/models/code/values/colored_value.dart';
import 'package:genuis/src/core/models/code/values/token_value.dart';
import 'package:genuis/src/core/models/module.dart';
import 'package:genuis/src/core/writers/code/class_code.dart';
import 'package:genuis/src/core/writers/code/code.dart';
import 'package:genuis/src/core/writers/code/constructor_code.dart';
import 'package:genuis/src/core/writers/code/field_code.dart';
import 'package:genuis/src/core/writers/code/method_code.dart';
import 'package:genuis/src/core/writers/code/param_code.dart';
import 'package:genuis/src/core/writers/code/params_code.dart';
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

    ClassCode(
      name: colorClassName,
      body: [
        FieldCode.final_(valueType, colorFieldName),
        for (final name in fields.keys) FieldCode.final_('Color', '_$name'),
        ConstructorCode(
          type: colorClassName,
          name: '_',
          params: ParamsCode(
            namedParams: [
              ParamCode(
                required_: true,
                this_: true,
                type: valueType,
                name: colorFieldName,
              ),
              for (final name in fields.keys)
                ParamCode(
                  required_: true,
                  type: 'Color',
                  name: name,
                ),
            ],
          ),
          redirect: [
            for (final name in fields.keys) '_$name = $name',
          ].join(', ').code,
        ),
        ConstructorCode(
          type: colorClassName,
          params: ParamsCode(
            params: [
              ParamCode(
                type: valueType,
                name: colorFieldName,
              ),
              for (final name in fields.keys)
                ParamCode(
                  type: 'Color',
                  name: name,
                ),
            ],
          ),
          redirect: [
            'this._(',
            for (final name in fields.keys) '$name: $name,',
            '$colorFieldName: $colorFieldName,',
            ')',
          ].join(' ').code,
        ),

        for (final theme in module.rootClass.themes)
          ConstructorCode(
            type: colorClassName,
            name: theme,
            params: ParamsCode(
              params: [
                ParamCode(
                  type: valueType,
                  name: colorFieldName,
                ),
              ],
            ),
            redirect: [
              'this._(',
              for (final (name, field) in fields.iterable) '$name: ${field.value(theme)},',
              '$colorFieldName: $colorFieldName,',
              ')',
            ].join(' ').code,
          ),

        MethodCode(
          name: 'lerp',
          params: ParamsCode(
            params: [
              ParamCode(name: 'other', type: colorClassName),
              ParamCode(name: 't', type: 'double'),
            ],
          ),
          type: colorClassName,
          body: [
            'if (identical(this, other)) return this;',
            'return $colorClassName._(',
            for (final name in fields.keys) '$name: Color.lerp(_$name, other._$name, t) ?? _$name,',
            '$colorFieldName: ${value.lerpCode(colorFieldName, 'other.$colorFieldName')},'
                ');',
          ].code,
        ),
        MethodCode(
          override_: true,
          name: '==',
          type: 'bool',
          operator: true,
          params: ParamsCode(
            params: [
              ParamCode(name: 'other', type: 'Object'),
            ],
          ),
          body: [
            'if (identical(this, other)) {',
            'return true;',
            '}',
            'if (other.runtimeType != runtimeType) {',
            'return false;',
            '}',
            'return other is $colorClassName',
            '&& other.$colorFieldName == $colorFieldName',
            for (final name in fields.keys) '&& other._$name == _$name',
            ';',
          ].code,
        ),
        for (final name in fields.keys)
          MethodCode(
            getter: true,
            name: name,
            type: recordClassName,
            expression: true,
            body: '${colorRecordClassName ?? ''}($colorFieldName, _$name)'.code,
          ),
        MethodCode(
          name: 'colored',
          type: recordClassName,
          expression: true,
          params: ParamsCode(
            params: [
              ParamCode(name: 'color', type: 'Color'),
            ],
          ),
          body: '${colorRecordClassName ?? ''}($colorFieldName, color)'.code,
        ),
      ],
    ).encode(buffer);

    if (colorRecordClassName != null) {
      ClassCode(
        name: recordClassName,
        body: [
          FieldCode.final_(valueType, colorFieldName),
          FieldCode.final_('Color', 'color'),
          ConstructorCode(
            type: recordClassName,
            const_: true,
            params: ParamsCode(
              params: [
                ParamCode(
                  this_: true,
                  name: colorFieldName,
                ),
                ParamCode(
                  this_: true,
                  name: 'color',
                ),
              ],
            ),
          ),
        ],
      ).encode(buffer);
    }
  }

  void writeTextStyleExtensionClass(StringBuffer buffer, Module module, Map<String, Field> fields) {
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

    for (final theme in module.rootClass.themes) {
      buffer.writeln('$colorClassName.$theme(TextStyle style) : this._(');
      for (final (name, field) in fields.iterable) {
        buffer.writeln('$name: ${field.value(theme)},');
      }
      buffer.writeln('style: style,');
      buffer.writeln(');');
    }

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

    buffer.writeln('@override');
    buffer.writeln('bool operator ==(Object other) {');
    buffer.writeln('if (identical(this, other)) {');
    buffer.writeln('return true;');
    buffer.writeln('}');
    buffer.writeln('if (other.runtimeType != runtimeType) {');
    buffer.writeln('return false;');
    buffer.writeln('}');
    buffer.writeln('return other is $colorClassName');
    buffer.writeln('&& super == other');
    for (final name in fields.keys) {
      buffer.writeln('&& other._$name == _$name');
    }
    buffer.writeln(';');
    buffer.writeln('}');

    buffer.writeln();
    for (final name in fields.keys) {
      buffer.writeln('TextStyle get $name => copyWith(color: _$name);');
    }
    buffer.writeln();
    buffer.writeln('TextStyle colored(Color? color) => copyWith(color: color);');

    buffer.writeln('}');
  }
}
