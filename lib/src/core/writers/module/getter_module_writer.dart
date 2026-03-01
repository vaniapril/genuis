import 'package:genuis/src/config/config.dart';
import 'package:genuis/src/core/models/code/code_entities/code_entity.dart';
import 'package:genuis/src/core/writers/code/class_code.dart';
import 'package:genuis/src/core/writers/code/code.dart';
import 'package:genuis/src/core/writers/code/constructor_code.dart';
import 'package:genuis/src/core/writers/code/field_code.dart';
import 'package:genuis/src/core/writers/code/method_code.dart';
import 'package:genuis/src/core/writers/code/param_code.dart';
import 'package:genuis/src/core/writers/code/params_code.dart';
import 'package:genuis/src/utils/string_extension.dart';

class GetterModuleWriter {
  const GetterModuleWriter();

  void writeMainClass(StringBuffer buffer, Class root) {
    final className = root.type;

    ClassCode.themeExtension(
      className,
      [
        // Fields
        for (final f in root.nodes) FieldCode.final_('\$${f.type}', '_${f.name}'),
        //Getters
        for (final f in root.nodes)
          MethodCode(
            name: f.name,
            type: f.type,
            body: '${f.type}(this)'.code,
            getter: true,
            expression: true,
          ),
        // Constructor
        ConstructorCode(
          const_: true,
          type: className,
          params: ParamsCode(
            namedParams: [
              for (final f in root.nodes)
                ParamCode(
                  required_: true,
                  type: '\$${f.type}',
                  name: f.name,
                ),
            ],
          ),
          redirect: [
            for (final f in root.nodes) '_${f.name} = ${f.name}',
          ].join(', ').code,
        ),
        // lerp method
        MethodCode.lerpMethod(className, [
          for (final f in root.nodes)
            (f.name, f.lerpCode('_${f.name}', 'other.${'_${f.name}'}')),
        ]),
        // copyWith method
        MethodCode(
          override_: true,
          name: 'copyWith',
          params: ParamsCode(
            namedParams: [
              for (final f in root.nodes)
                ParamCode(
                  required_: false,
                  this_: false,
                  type: '\$${f.type}?',
                  name: f.name,
                ),
            ],
          ),
          type: className,
          body: [
            'return $className(',
            for (final f in root.nodes) '${f.name}: ${f.name} ?? _${f.name},',
            ');',
          ].code,
        ),
        // Const Theme Fields
        for (final theme in root.themes)
          FieldCode.themeConst(className, theme, [
            for (final f in root.nodes) (f.name, '\$${f.value(theme)}'),
          ]),
        // Factory of context
        ConstructorCode.ofContextFactory(className, root.themes.first),
      ],
    ).encode(buffer);
  }

  void write(StringBuffer buffer, Class root) {
    _writeClassWithSubclasses(buffer, root, root.name);
    _writeThemeExtClass(buffer, root);
  }

  void _writeThemeExtClass(StringBuffer buffer, Class root) {
    final className = '\$${root.type}';

    final fields = root.flattenFields;

    ClassCode.themeExtension(
      className,
      [
        // Fields
        for (final f in fields) FieldCode.final_(f.type, f.enumName(Config.it.baseTheme.asName)),
        // Constructor
        ConstructorCode.constConstructor(className, [
          for (final f in fields) f.enumName(Config.it.baseTheme.asName),
        ]),
        // lerp method
        MethodCode.lerpMethod(className, [
          for (final f in fields)
            (
              f.enumName(Config.it.baseTheme.asName),
              f.lerpCode(
                f.enumName(Config.it.baseTheme.asName),
                'other.${f.enumName(Config.it.baseTheme.asName)}',
              ),
            ),
        ]),
        // copyWith method
        MethodCode.copyWithMethod(className, [
          for (final f in fields) (f.type, f.enumName(Config.it.baseTheme.asName)),
        ]),
        // Const Theme Fields
        for (final theme in root.themes)
          FieldCode.themeConst(className, theme, [
            for (final f in fields) (f.enumName(Config.it.baseTheme.asName), f.value(theme)),
          ]),
      ],
    ).encode(buffer);
  }

  void _writeClassWithSubclasses(StringBuffer buffer, Class class_, String moduleName) {
    for (final model in class_.classes) {
      _writeClassWithSubclasses(buffer, model, moduleName);
    }

    _writeClass(buffer, class_, moduleName);
  }

  void _writeClass(StringBuffer buffer, Class class_, String moduleName) {
    final className = class_.type;

    ClassCode(
      name: className,
      body: [
        // Fields
        FieldCode.final_(Config.it.className, mainField),

        // getters
        for (final f in class_.nodes) fieldFrom(f, moduleName),
        // Constructor
        ConstructorCode(
          type: className,
          params: ParamsCode(
            params: [
              ParamCode(name: mainField, this_: true),
            ],
          ),
        ),
      ],
    ).encode(buffer);
  }

  Code fieldFrom(CodeEntity f, String moduleName) => f is Field
      ? MethodCode(
          name: f.name,
          type: f.type,
          getter: true,
          expression: true,
          body: '$mainField._$moduleName.${f.enumName(Config.it.baseTheme.asName)}'.code,
        )
      : MethodCode(
          name: f.name,
          type: f.type,
          getter: true,
          expression: true,
          body: '${f.type}($mainField)'.code,
        );

  String get mainField => '_${Config.it.fieldName}';
}
