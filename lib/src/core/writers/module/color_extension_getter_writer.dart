import 'package:genuis/src/config/config.dart';
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
import 'package:genuis/src/utils/string_extension.dart';

class ColorExtensionGetterWriter {
  final String colorClassName;
  final String colorFieldName;

  ColorExtensionGetterWriter({
    required this.colorFieldName,
    required this.colorClassName,
  });

  void writeAssetExtensionClass(
    StringBuffer buffer,
    Module module,
    Map<(String, String), Field> fields,
  ) {
    final coloredValue = module.rootClass.flattenFields.first.values.values.first;
    final value = coloredValue is ColoredValue ? coloredValue.innerValue : coloredValue;

    final valueType = module.config.tokenClassType == TokenClassType.enum_ && value is TokenValue
        ? value.tokenType
        : value.type;

    ClassCode(
      name: colorClassName,
      body: [
        FieldCode.final_(valueType, colorFieldName),
        FieldCode.final_(Config.it.className, '_${Config.it.fieldName}'),
        ConstructorCode(
          type: colorClassName,
          params: ParamsCode(
            params: [
              ParamCode(
                this_: true,
                type: valueType,
                name: colorFieldName,
              ),
              ParamCode(
                type: Config.it.className,
                name: Config.it.fieldName,
              ),
            ],
          ),
          redirect: '_${Config.it.fieldName} = ${Config.it.fieldName}'.code,
        ),
        for (final ((moduleName, name), field) in fields.iterable)
          MethodCode(
            getter: true,
            name: name,
            type: '($valueType, Color)',
            expression: true,
            body:
                '($colorFieldName, _${Config.it.fieldName}._$moduleName.${field.enumName(Config.it.baseTheme.asName)})'
                    .code,
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
            '&& other._${Config.it.fieldName} == _${Config.it.fieldName}',
            ';',
          ].code,
        ),
      ],
    ).encode(buffer);
  }

  void writeTextStyleExtensionClass(
    StringBuffer buffer,
    Module module,
    Map<(String, String), Field> fields,
  ) {
    ClassCode(
      name: colorClassName,
      extends_: 'TextStyle',
      body: [
        FieldCode.final_(Config.it.className, '_${Config.it.fieldName}'),
        ConstructorCode(
          type: colorClassName,
          params: ParamsCode(
            params: [
              ParamCode(
                type: 'TextStyle',
                name: 'style',
              ),
              ParamCode(
                type: Config.it.className,
                name: Config.it.fieldName,
              ),
            ],
          ),
          redirect: [
            '_${Config.it.fieldName} = ${Config.it.fieldName},',
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

        for (final ((moduleName, name), field) in fields.iterable)
          MethodCode(
            getter: true,
            name: name,
            type: 'TextStyle',
            expression: true,
            body:
                'copyWith(color: _${Config.it.fieldName}._$moduleName.${field.enumName(Config.it.baseTheme.asName)})'
                    .code,
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
            '&& other._${Config.it.fieldName} == _${Config.it.fieldName}',
            ';',
          ].code,
        ),
      ],
    ).encode(buffer);
  }
}
