import 'package:genuis/src/core/builders/base/model_builder.dart';
import 'package:genuis/src/core/data/field.dart';
import 'package:genuis/src/core/data/node.dart';
import 'package:genuis/src/utils/string_extension.dart';

class GetterThemeBuilder<T extends Field> extends ModelBuilder<T> {
  final Folder<T> root;

  final String? additions;

  const GetterThemeBuilder({
    required super.baseTheme,
    required super.typePrefix,
    required super.typePostfix,
    required this.root,
    this.additions,
  });

  StringBuffer code() {
    final StringBuffer buffer = StringBuffer();
    _writeFolder(root, buffer);
    return buffer;
  }

  void _writeFolder(Folder<T> folder, StringBuffer buffer) {
    for (final model in folder.folders) {
      _writeFolder(model, buffer);
    }

    _writeMainClass(folder, buffer);
    buffer.writeln();

    for (final theme in folder.themes) {
      _writeThemeClass(folder, theme, buffer);
      buffer.writeln();
    }
  }

  void _writeMainClass(Folder<T> folder, StringBuffer buffer) {
    buffer.writeln('abstract class ${folder.type} {');
    _writeThemesInMain(folder, buffer);
    buffer.writeln();
    if (additions != null) {
      buffer.writeln(additions!);
      buffer.writeln();
    }

    buffer.writeln('const ${folder.type}._();');
    buffer.writeln();
    _writeGettersInMain(folder, buffer);
    buffer.writeln('}');
  }

  void _writeThemesInMain(Folder<T> folder, StringBuffer buffer) {
    for (final theme in folder.themes) {
      buffer.writeln(
        'static const ${folder.type} $theme = _${theme.upperFirst}${folder.type}();',
      );
    }
  }

  void _writeGettersInMain(Folder<T> folder, StringBuffer buffer) {
    for (final model in folder.nodes) {
      buffer.writeln('${model.type} get ${model.name};');
    }
  }

  void _writeThemeClass(Folder<T> folder, String theme, StringBuffer buffer) {
    buffer.writeln(
      'class _${theme.upperFirst}${folder.type} extends ${folder.type} {',
    );
    buffer.writeln('const _${theme.upperFirst}${folder.type}(): super._();');
    buffer.writeln();
    _writeGettersInTheme(folder, theme, buffer);
    buffer.writeln('}');
  }

  void _writeGettersInTheme(Folder<T> folder, String theme, StringBuffer buffer) {
    for (final model in folder.nodes) {
      buffer.writeln('@override');
      buffer.writeln(
        '${folder.type} get ${model.name} => ${model.value(theme)};',
      );
    }
  }
}
