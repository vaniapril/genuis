import 'package:genuis/src/core/builders/base/model_builder.dart';
import 'package:genuis/src/core/data/node.dart';

class ThemeExtensionBuilder extends ModelBuilder {
  final bool baseHasLerp;
  final Folder root;

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

    _writeFolder(root, buffer);

    return buffer;
  }

  void _writeFolder(Folder folder, StringBuffer buffer) {
    for (final model in folder.folders) {
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

  void _writeFields(Folder folder, StringBuffer buffer) {
    for (final model in folder.nodes) {
      buffer.writeln('final ${model.type} ${model.name};');
    }
  }

  void _writeConstructor(Folder folder, StringBuffer buffer) {
    buffer.writeln('const ${folder.type}({');
    for (final model in folder.nodes) {
      buffer.writeln('required this.${model.name},');
    }
    buffer.writeln('});');
  }

  void _writeCopyWith(Folder folder, StringBuffer buffer) {
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

  void _writeLerp(Folder folder, StringBuffer buffer) {
    buffer.writeln('@override');
    buffer.writeln('${folder.type} lerp(ThemeExtension<${folder.type}>? other, double t) {');
    buffer.writeln('if (other is! ${folder.type}) return this;');
    buffer.writeln('return ${folder.type}(');
    for (final model in folder.nodes) {
      final hasLerp = model is Folder || (model is Item && baseHasLerp);

      if (model is Folder) {
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

  void _writeThemes(Folder folder, StringBuffer buffer) {
    for (final theme in folder.themes) {
      buffer.writeln('static final ${folder.type} $theme = ${folder.type}(');
      for (final model in folder.nodes) {
        buffer.writeln('${model.name}: ${model.value(theme)},');
      }
      buffer.writeln(');');
    }
  }
}
