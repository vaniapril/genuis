import 'package:genuis/src/config/yaml/genuis_config.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/utils/string_extension.dart';

class GetterThemeWriter {
  final GenuisConfig config;

  const GetterThemeWriter({
    required this.config,
  });

  void write(StringBuffer buffer, Class root) {
    _writeClassWithSubclasses(buffer, root);
  }

  void writeMainClass(StringBuffer buffer, Class mainClass) {
    _writeMainInheritedWidgetClass(buffer, mainClass);
    buffer.writeln();
    buffer.writeln('abstract class ${mainClass.type} {');
    _writeAbstractClassBody(buffer, mainClass);
    buffer.writeln();
    _writeMainClassFactory(buffer, mainClass);
    buffer.writeln('}');
    buffer.writeln();
    _writeThemeClasses(buffer, mainClass);
  }

  void _writeMainInheritedWidgetClass(StringBuffer buffer, Class mainClass) {
    buffer.writeln('class ${mainClass.type}Widget extends InheritedWidget {');
    buffer.writeln('final ${mainClass.type} ${config.mainGetterName};');
    buffer.writeln();
    buffer.writeln('const  ${mainClass.type}Widget({');
    buffer.writeln('super.key,');
    buffer.writeln('required this.theme,');
    buffer.writeln('})');
    buffer.writeln();
    buffer.writeln('static ${mainClass.type}Widget? of(BuildContext context) {');
    buffer.writeln('return context.dependOnInheritedWidgetOfExactType<${mainClass.type}Widget>();');
    buffer.writeln('}');
    buffer.writeln();
    buffer.writeln('@override');
    buffer.writeln(
        'bool updateShouldNotify(${mainClass.type}Widget oldWidget) => theme != oldWidget.theme;');
    buffer.writeln('}');
  }

  void _writeMainClassFactory(StringBuffer buffer, Class mainClass) {
    buffer.writeln('factory ${mainClass.type}.of(BuildContext context) {');
    buffer.writeln(
        'return ${mainClass.type}Widget.of(context).theme ?? ${mainClass.type}.${mainClass.themes.first};');
    buffer.writeln('}');
  }

  void _writeClassWithSubclasses(StringBuffer buffer, Class folder) {
    for (final model in folder.classes) {
      _writeClassWithSubclasses(buffer, model);
    }
    buffer.writeln();
    buffer.writeln('abstract class ${folder.type} {');
    _writeAbstractClassBody(buffer, folder);
    buffer.writeln('}');
    buffer.writeln();
    _writeThemeClasses(buffer, folder);
  }

  void _writeAbstractClassBody(StringBuffer buffer, Class folder) {
    _writeAbstractThemes(buffer, folder);
    buffer.writeln();
    buffer.writeln('const ${folder.type}._();');
    buffer.writeln();
    _writeAbstractClassGetters(buffer, folder);
  }

  void _writeAbstractThemes(StringBuffer buffer, Class folder) {
    for (final theme in folder.themes) {
      buffer.writeln('static const ${folder.type} $theme = _${folder.type}${theme.upperFirst}();');
    }
  }

  void _writeAbstractClassGetters(StringBuffer buffer, Class folder) {
    for (final model in folder.nodes) {
      buffer.writeln('${model.type} get ${model.name};');
    }
  }

  void _writeThemeClasses(StringBuffer buffer, Class folder) {
    for (final theme in folder.themes) {
      buffer.writeln('class _${folder.type}${theme.upperFirst} extends ${folder.type} {');
      _writeThemeClassBody(buffer, folder, theme);
      buffer.writeln('}');
      buffer.writeln();
    }
  }

  void _writeThemeClassBody(StringBuffer buffer, Class folder, String theme) {
    buffer.writeln('const _${folder.type}${theme.upperFirst}(): super._();');
    buffer.writeln();
    _writeThemeClassGetters(buffer, folder, theme);
  }

  void _writeThemeClassGetters(StringBuffer buffer, Class folder, String theme) {
    for (final model in folder.nodes) {
      buffer.writeln('@override');
      buffer.writeln('${folder.type} get ${model.name} => ${model.value(theme)};');
    }
  }
}
