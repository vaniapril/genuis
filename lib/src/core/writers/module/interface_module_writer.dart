import 'package:genuis/src/core/models/code/code_entities/code_entity.dart';
import 'package:genuis/src/core/writers/code/class_code.dart';
import 'package:genuis/src/core/writers/code/code.dart';
import 'package:genuis/src/core/writers/code/constructor_code.dart';
import 'package:genuis/src/core/writers/code/field_code.dart';
import 'package:genuis/src/core/writers/code/method_code.dart';
import 'package:genuis/src/utils/string_extension.dart';

class InterfaceModuleWriter {
  const InterfaceModuleWriter();

  void write(StringBuffer buffer, Class root) {
    _writeClassWithSubclasses(buffer, root);
  }

  void writeMainClass(StringBuffer buffer, Class class_) {
    buffer.writeln();
    _writeClass(buffer, class_);
  }

  // void _writeMainClassFactory(StringBuffer buffer, Class class_) {
  //   buffer.writeln('factory ${class_.type}.of(BuildContext context) {');
  //   buffer.writeln(
  //       'return ${class_.type}Widget.of(context)?.${config.fieldName} ?? ${class_.type}.${_theme(class_.themes.first)};');
  //   buffer.writeln('}');
  // }

  void _writeClassWithSubclasses(StringBuffer buffer, Class class_) {
    for (final model in class_.classes) {
      _writeClassWithSubclasses(buffer, model);
    }

    _writeClass(buffer, class_);
  }

  void _writeClass(StringBuffer buffer, Class class_) {
    ClassCode(
      name: class_.type,
      abstract_: true,
      body: [
        // Abstract
        for (final theme in class_.themes)
          FieldCode(
            type: class_.type,
            name: theme,
            static: true,
            const_: true,
            value: '${_themeClassName(class_, theme)}()'.code,
          ),

        // Abstract getters
        for (final model in class_.nodes)
          MethodCode(
            getter: true,
            type: model.type,
            name: model.name,
          ),
      ],
    ).encode(buffer);

    for (final theme in class_.themes) {
      ClassCode(
        name: _themeClassName(class_, theme),
        implements_: class_.type,
        body: [
          // Empty constructor
          ConstructorCode.constConstructor(_themeClassName(class_, theme), []),
          // getters
          for (final model in class_.nodes)
            MethodCode.overrideGetter(
              model.type,
              model.name,
              model.value(theme),
            ),
        ],
      ).encode(buffer);
    }
  }

  String _themeClassName(Class class_, String theme) => '_${class_.type}${theme.upperFirst}Impl';
}
