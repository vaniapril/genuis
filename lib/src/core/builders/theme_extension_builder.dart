import 'package:genuis/src/core/data/code_entity.dart';

class ThemeExtensionBuilder {
  final bool baseHasLerp;
  final Class root;

  final String? additions;

  const ThemeExtensionBuilder({
    required this.baseHasLerp,
    required this.root,
    this.additions,
  });

  StringBuffer code() {
    final StringBuffer buffer = StringBuffer();

    _writeFolder(root, buffer);

    return buffer;
  }

  void _writeFolder(Class folder, StringBuffer buffer) {
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
      final hasLerp = model is Class || (model is Field && baseHasLerp);

      if (model is Class) {
        buffer.writeln(
          '${model.name}:${hasLerp ? '${model.name}.lerp(other.${model.name}, t)' : 't < 0.5 ? ${model.name} : other.${model.name}'},',
        );
      } else {
        buffer.writeln(
          '${model.name}:${hasLerp ? '${model.type}.lerp(${model.name}, other.${model.name}, t) ?? other.${model.name}' : 't < 0.5 ? ${model.name} : other.${model.name}'},',
        );
      }
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
