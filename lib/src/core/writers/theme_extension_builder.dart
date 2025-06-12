import 'package:genuis/src/core/data/code/entity/code_entity.dart';

class ThemeExtensionBuilder {
  const ThemeExtensionBuilder();

  void write(Class root, StringBuffer buffer, {String? additions}) {
    _writeFolder(root, buffer, additions: additions);
  }

  void _writeFolder(Class folder, StringBuffer buffer, {String? additions}) {
    for (final model in folder.classes) {
      if (model.nodes.isNotEmpty) {
        _writeFolder(model, buffer);
      }
    }
    buffer.writeln('class ${folder.type} extends ThemeExtension<${folder.type}> {');
    if (additions != null) {
      buffer.writeln(additions);
      buffer.writeln();
    }
    _writeFields(folder, buffer);
    buffer.writeln();
    _writeConstructor(folder, buffer);
    buffer.writeln();
    _writeCopyWith(folder, buffer);
    buffer.writeln();
    _writeLerp(folder, buffer);
    buffer.writeln();
    _writeThemes(folder, buffer);

    buffer.writeln('}');
  }

  void _writeFields(Class folder, StringBuffer buffer) {
    for (final model in folder.nodes) {
      buffer.writeln('final ${model.type} ${model.name};');
    }
  }

  void _writeConstructor(Class folder, StringBuffer buffer) {
    buffer.writeln('const ${folder.type}({');
    for (final model in folder.nodes) {
      buffer.writeln('required this.${model.name},');
    }
    buffer.writeln('});');
  }

  void _writeCopyWith(Class folder, StringBuffer buffer) {
    buffer.writeln('@override');
    buffer.writeln('${folder.type} copyWith({');
    for (final model in folder.nodes) {
      buffer.writeln('${model.type}? ${model.name},');
    }
    buffer.writeln('}) {');
    buffer.writeln('return ${folder.type}(');
    for (final model in folder.nodes) {
      buffer.writeln('${model.name}: ${model.name} ?? this.${model.name},');
    }
    buffer.writeln(');');
    buffer.writeln('}');
  }

  void _writeLerp(Class folder, StringBuffer buffer) {
    buffer.writeln('@override');
    buffer.writeln('${folder.type} lerp(ThemeExtension<${folder.type}>? other, double t) {');
    buffer.writeln('if (other is! ${folder.type}) return this;');
    buffer.writeln('return ${folder.type}(');
    for (final model in folder.nodes) {
      buffer.writeln(
        '${model.name}:${model.lerpCode(model.name, 'other.${model.name}')},',
      );
    }
    buffer.writeln(');');
    buffer.writeln('}');
  }

  void _writeThemes(Class folder, StringBuffer buffer) {
    for (final theme in folder.themes) {
      buffer.writeln('static final ${folder.type} $theme = ${folder.type}(');
      for (final model in folder.nodes) {
        buffer.writeln('${model.name}: ${model.value(theme)},');
      }
      buffer.writeln(');');
    }
  }
}
