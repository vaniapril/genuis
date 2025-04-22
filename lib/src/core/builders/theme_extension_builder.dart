import 'package:genuis/src/core/builders/base/model_builder.dart';
import 'package:genuis/src/core/data/field.dart';
import 'package:genuis/src/core/data/model.dart';

class ThemeExtensionBuilder<T extends Field> extends ModelBuilder<T> {
  final bool baseHasLerp;
  final ModelFolder<T> root;

  final String? additions;

  const ThemeExtensionBuilder({
    required super.baseTheme,
    required super.typePrefix,
    required super.typePostfix,
    required this.baseHasLerp,
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
        // TODO(IvanPrylepski): remove
        if (model.models.isNotEmpty) {
          _writeFolder(model, buffer, [...path, folder.name]);
        }
      }
    }
    buffer.writeln('class ${type(folder, path)} extends ThemeExtension<${type(folder, path)}> {');
    if (additions != null) {
      buffer.writeln(additions);
      buffer.writeln();
    }
    _writeFields(folder, buffer, path);
    buffer.writeln();
    _writeConstructor(folder, buffer, path);
    buffer.writeln();
    _writeCopyWith(folder, buffer, path);
    buffer.writeln();
    _writeLerp(folder, buffer, path);
    buffer.writeln();
    _writeThemes(folder, buffer, path);

    buffer.writeln('}');
  }

  void _writeFields(ModelFolder<T> folder, StringBuffer buffer, List<String> path) {
    for (final model in folder.models) {
      buffer.writeln('final ${type(model, [...path, folder.name])} ${model.name};');
    }
  }

  void _writeConstructor(ModelFolder<T> folder, StringBuffer buffer, List<String> path) {
    buffer.writeln('const ${type(folder, path)}({');
    for (final model in folder.models) {
      buffer.writeln('required this.${model.name},');
    }
    buffer.writeln('});');
  }

  void _writeCopyWith(ModelFolder<T> folder, StringBuffer buffer, List<String> path) {
    buffer.writeln('@override');
    buffer.writeln('${type(folder, path)} copyWith({');
    for (final model in folder.models) {
      buffer.writeln('${type(model, [...path, folder.name])}? ${model.name},');
    }
    buffer.writeln('}) {');
    buffer.writeln('return ${type(folder, path)}(');
    for (final model in folder.models) {
      buffer.writeln('${model.name}: ${model.name} ?? this.${model.name},');
    }
    buffer.writeln(');');
    buffer.writeln('}');
  }

  void _writeLerp(ModelFolder<T> folder, StringBuffer buffer, List<String> path) {
    buffer.writeln('@override');
    buffer.writeln(
        '${type(folder, path)} lerp(ThemeExtension<${type(folder, path)}>? other, double t) {');
    buffer.writeln('if (other is! ${type(folder, path)}) return this;');
    buffer.writeln('return ${type(folder, path)}(');
    for (final model in folder.models) {
      final hasLerp = model is ModelFolder<T> || (model is ModelItem<T> && baseHasLerp);

      if (model is ModelFolder<T>) {
        buffer.writeln(
          '${model.name}:${hasLerp ? '${model.name}.lerp(other.${model.name}, t)' : 't < 0.5 ? ${model.name} : other.${model.name}'},',
        );
      } else {
        buffer.writeln(
          '${model.name}:${hasLerp ? '${type(model, [
                  ...path,
                  folder.name
                ])}.lerp(${model.name}, other.${model.name}, t) ?? other.${model.name}' : 't < 0.5 ? ${model.name} : other.${model.name}'},',
        );
      }
    }
    buffer.writeln(');');
    buffer.writeln('}');
  }

  void _writeThemes(ModelFolder<T> folder, StringBuffer buffer, List<String> path) {
    for (final theme in folder.themes) {
      buffer.writeln('static final ${type(folder, path)} $theme = ${type(folder, path)}(');
      for (final model in folder.models) {
        buffer.writeln('${model.name}: ${value(model, theme, [...path, folder.name])},');
      }
      buffer.writeln(');');
    }
  }
}
