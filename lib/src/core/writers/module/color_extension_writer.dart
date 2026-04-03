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

  ColorExtensionWriter({
    required this.colorFieldName,
    required this.colorClassName,
  });

  void writeAssetExtensionClass(StringBuffer buffer, Module module, Map<String, Field> fields) {
    final coloredValue = module.rootClass.flattenFields.first.values.values.first;
    final value = coloredValue is ColoredValue ? coloredValue.innerValue : coloredValue;

    final valueType = module.config.tokenClassType == TokenClassType.enum_ && value is TokenValue
        ? value.tokenType
        : value.type;

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
            type: '($valueType, Color)',
            expression: true,
            body: '($colorFieldName, _$name)'.code,
          ),
        MethodCode(
          name: 'colored',
          type: '($valueType, Color)',
          expression: true,
          params: ParamsCode(
            params: [
              ParamCode(name: 'color', type: 'Color'),
            ],
          ),
          body: '($colorFieldName, color)'.code,
        ),
      ],
    ).encode(buffer);
  }

  void writeTextStyleExtensionClass(StringBuffer buffer, Module module, Map<String, Field> fields) {
    ClassCode(
      name: colorClassName,
      extends_: 'TextStyle',
      body: [
        for (final name in fields.keys) FieldCode.final_('Color', '_$name'),
        ConstructorCode(
          type: colorClassName,
          name: '_',
          params: ParamsCode(
            namedParams: [
              for (final name in fields.keys)
                ParamCode(
                  required_: true,
                  type: 'Color',
                  name: name,
                ),
              ParamCode(
                required_: true,
                type: 'TextStyle',
                name: 'style',
              ),
            ],
          ),
          redirect: [
            for (final name in fields.keys) '_$name = $name,',
            'super(',
            'inherit: style.inherit,',
            'color: style.color,',
            'backgroundColor: style.backgroundColor,',
            'fontSize: style.fontSize,',
            'fontWeight: style.fontWeight,',
            'fontStyle: style.fontStyle,',
            'letterSpacing: style.letterSpacing,',
            'wordSpacing: style.wordSpacing,',
            'textBaseline: style.textBaseline,',
            'height: style.height,',
            'leadingDistribution: style.leadingDistribution,',
            'locale: style.locale,',
            'foreground: style.foreground,',
            'background: style.background,',
            'shadows: style.shadows,',
            'fontFeatures: style.fontFeatures,',
            'fontVariations: style.fontVariations,',
            'decoration: style.decoration,',
            'decorationColor: style.decorationColor,',
            'decorationStyle: style.decorationStyle,',
            'decorationThickness: style.decorationThickness,',
            'debugLabel: style.debugLabel,',
            'fontFamily: style.fontFamily,',
            'overflow: style.overflow,',
            ')',
          ].code,
        ),
        for (final theme in module.rootClass.themes)
          ConstructorCode(
            type: colorClassName,
            name: theme,
            params: ParamsCode(
              params: [
                ParamCode(
                  type: 'TextStyle',
                  name: 'style',
                ),
              ],
            ),
            redirect: [
              'this._(',
              for (final (name, field) in fields.iterable) '$name: ${field.value(theme)},',
              'style: style,',
              ')',
            ].code,
          ),
        MethodCode(
          name: 'lerp',
          type: colorClassName,
          params: ParamsCode(
            params: [
              ParamCode(
                type: colorClassName,
                name: 'other',
              ),
              ParamCode(
                type: 'double',
                name: 't',
              ),
            ],
          ),
          body: [
            'if (identical(this, other)) return this;',
            'return $colorClassName._(',
            for (final name in fields.keys) '$name: Color.lerp(_$name, other._$name, t) ?? _$name,',
            'style: TextStyle.lerp(this, other, t) ?? this,',
            ');',
          ].code,
        ),
        MethodCode(
          type: 'bool',
          operator: true,
          override_: true,
          name: '==',
          params: ParamsCode(
            params: [
              ParamCode(
                type: 'Object',
                name: 'other',
              ),
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
            '&& super == other',
            for (final name in fields.keys) '&& other._$name == _$name',
            ';',
          ].code,
        ),
        for (final name in fields.keys)
          MethodCode(
            getter: true,
            name: name,
            type: 'TextStyle',
            expression: true,
            body: 'copyWith(color: _$name)'.code,
          ),
        MethodCode(
          name: 'colored',
          type: 'TextStyle',
          expression: true,
          params: ParamsCode(
            params: [
              ParamCode(
                type: 'Color?',
                name: 'color',
              ),
            ],
          ),
          body: 'copyWith(color: color)'.code,
        ),
      ],
    ).encode(buffer);
  }
}
