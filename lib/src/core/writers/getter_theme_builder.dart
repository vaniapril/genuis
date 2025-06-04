import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/utils/string_extension.dart';

class GetterThemeBuilder {
  const GetterThemeBuilder();

  StringBuffer write(Class root, StringBuffer buffer) {
    _writeFolder(root, buffer);
    return buffer;
  }

  void _writeFolder(Class folder, StringBuffer buffer) {
    for (final model in folder.classes) {
      _writeFolder(model, buffer);
    }

    _writeMainClass(folder, buffer);
    buffer.writeln();

    for (final theme in folder.themes) {
      _writeThemeClass(folder, theme, buffer);
      buffer.writeln();
    }
  }

  void _writeMainClass(Class folder, StringBuffer buffer) {
    buffer.writeln('abstract class ${folder.type} {');
    _writeThemesInMain(folder, buffer);
    buffer.writeln();
    // if (additions != null) {
    //   buffer.writeln(additions!);
    //   buffer.writeln();
    // }

    buffer.writeln('const ${folder.type}._();');
    buffer.writeln();
    _writeGettersInMain(folder, buffer);
    buffer.writeln('}');
  }

  void _writeThemesInMain(Class folder, StringBuffer buffer) {
    for (final theme in folder.themes) {
      buffer.writeln(
        'static const ${folder.type} $theme = _${theme.upperFirst}${folder.type}();',
      );
    }
  }

  void _writeGettersInMain(Class folder, StringBuffer buffer) {
    for (final model in folder.nodes) {
      buffer.writeln('${model.type} get ${model.name};');
    }
  }

  void _writeThemeClass(Class folder, String theme, StringBuffer buffer) {
    buffer.writeln(
      'class _${theme.upperFirst}${folder.type} extends ${folder.type} {',
    );
    buffer.writeln('const _${theme.upperFirst}${folder.type}(): super._();');
    buffer.writeln();
    _writeGettersInTheme(folder, theme, buffer);
    buffer.writeln('}');
  }

  void _writeGettersInTheme(Class folder, String theme, StringBuffer buffer) {
    for (final model in folder.nodes) {
      buffer.writeln('@override');
      buffer.writeln(
        '${folder.type} get ${model.name} => ${model.value(theme)};',
      );
    }
  }
}
