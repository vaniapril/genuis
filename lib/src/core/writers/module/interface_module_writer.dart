import 'package:genuis/src/core/models/code/code_entities/code_entity.dart';
import 'package:genuis/src/utils/string_extension.dart';

class InterfaceModuleWriter {
  const InterfaceModuleWriter();

  void write(StringBuffer buffer, Class root) {
    _writeClassWithSubclasses(buffer, root);
  }

  void writeMainClass(StringBuffer buffer, Class class_) {
    buffer.writeln();
    buffer.writeln('abstract class ${class_.type} {');
    _writeAbstractClassBody(buffer, class_);
    // buffer.writeln();
    // _writeMainClassFactory(buffer, class_);
    buffer.writeln('}');
    buffer.writeln();
    _writeThemeClasses(buffer, class_);
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
    buffer.writeln();
    buffer.writeln('abstract class ${class_.type} {');
    _writeAbstractClassBody(buffer, class_);
    buffer.writeln('}');
    buffer.writeln();
    _writeThemeClasses(buffer, class_);
  }

  void _writeAbstractClassBody(StringBuffer buffer, Class class_) {
    _writeAbstractThemes(buffer, class_);
    buffer.writeln();
    _writeAbstractClassGetters(buffer, class_);
  }

  void _writeAbstractThemes(StringBuffer buffer, Class class_) {
    for (final theme in class_.themes) {
      buffer.writeln('static const ${class_.type} $theme = ${_themeClassName(class_, theme)}();');
    }
  }

  void _writeAbstractClassGetters(StringBuffer buffer, Class class_) {
    for (final model in class_.nodes) {
      buffer.writeln('${model.type} get ${model.name};');
    }
  }

  void _writeThemeClasses(StringBuffer buffer, Class class_) {
    for (final theme in class_.themes) {
      buffer.writeln('class ${_themeClassName(class_, theme)} implements ${class_.type} {');
      _writeThemeClassBody(buffer, class_, theme);
      buffer.writeln('}');
      buffer.writeln();
    }
  }

  void _writeThemeClassBody(StringBuffer buffer, Class class_, String theme) {
    buffer.writeln('const ${_themeClassName(class_, theme)}();');
    buffer.writeln();
    _writeThemeClassGetters(buffer, class_, theme);
  }

  void _writeThemeClassGetters(StringBuffer buffer, Class class_, String theme) {
    for (final model in class_.nodes) {
      buffer.writeln('@override');
      buffer.writeln('${model.type} get ${model.name} => ${model.value(theme)};');
    }
  }

  String _themeClassName(Class class_, String theme) => '_${class_.type}${theme.upperFirst}Impl';
}
