import 'package:x_gens/src/core/builders/base/model_builder.dart';
import 'package:x_gens/src/core/data/field.dart';
import 'package:x_gens/src/core/data/model.dart';
import 'package:x_gens/src/utils/string_extension.dart';

class GetterThemeBuilder<T extends Field> extends ModelBuilder<T> {
  final ModelFolder<T> root;

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
    _writeFolder(root, buffer, []);
    return buffer;
  }

  void _writeFolder(ModelFolder<T> folder, StringBuffer buffer, List<String> path) {
    for (final model in folder.models) {
      if (model is ModelFolder<T>) {
        _writeFolder(model, buffer, [...path, folder.name]);
      }
    }

    _writeMainClass(folder, buffer, path);
    buffer.writeln();

    for (final theme in folder.themes) {
      _writeThemeClass(folder, theme, buffer, path);
      buffer.writeln();
    }
  }

  void _writeMainClass(ModelFolder<T> folder, StringBuffer buffer, List<String> path) {
    buffer.writeln('abstract class ${type(folder, path)} {');
    _writeThemesInMain(folder, buffer, path);
    buffer.writeln();
    if (additions != null) {
      buffer.writeln(additions!);
      buffer.writeln();
    }

    buffer.writeln('const ${type(folder, path)}._();');
    buffer.writeln();
    _writeGettersInMain(folder, buffer, path);
    buffer.writeln('}');
  }

  void _writeThemesInMain(ModelFolder<T> folder, StringBuffer buffer, List<String> path) {
    for (final theme in folder.themes) {
      buffer.writeln(
        'static const ${type(folder, path)} $theme = _${theme.upperFirst}${type(folder, path)}();',
      );
    }
  }

  void _writeGettersInMain(ModelFolder<T> folder, StringBuffer buffer, List<String> path) {
    for (final model in folder.models) {
      buffer.writeln('${type(model, [...path, folder.name])} get ${model.name};');
    }
  }

  void _writeThemeClass(
      ModelFolder<T> folder, String theme, StringBuffer buffer, List<String> path) {
    buffer.writeln(
      'class _${theme.upperFirst}${type(folder, path)} extends ${type(folder, path)} {',
    );
    buffer.writeln('const _${theme.upperFirst}${type(folder, path)}(): super._();');
    buffer.writeln();
    _writeGettersInTheme(folder, theme, buffer, path);
    buffer.writeln('}');
  }

  void _writeGettersInTheme(
      ModelFolder<T> folder, String theme, StringBuffer buffer, List<String> path) {
    for (final model in folder.models) {
      buffer.writeln('@override');
      buffer.writeln(
        '${type(model, [...path, folder.name])} get ${model.name} => ${value(model, theme, [
              ...path,
              folder.name
            ])};',
      );
    }
  }
}
