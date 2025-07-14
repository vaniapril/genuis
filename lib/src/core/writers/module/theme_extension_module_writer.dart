import 'package:genuis/src/config/config.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';

class ThemeExtensionModuleWriter {
  final Config config;

  const ThemeExtensionModuleWriter({
    required this.config,
  });

  void write(StringBuffer buffer, Class root) {
    _writeClassWithSubclasses(buffer, root);
  }

  void writeMainClass(StringBuffer buffer, Class mainClass) {
    buffer.writeln('class ${mainClass.type} extends ThemeExtension<${mainClass.type}> {');
    _writeClassBody(buffer, mainClass);
    buffer.writeln();
    _writeMainClassFactory(buffer, mainClass);
    buffer.writeln('}');
  }

  void _writeMainClassFactory(StringBuffer buffer, Class mainClass) {
    buffer.writeln('factory ${mainClass.type}.of(BuildContext context) {');
    buffer.writeln(
        'return Theme.of(context).extension<${mainClass.type}>() ?? ${mainClass.type}.${mainClass.themes.first};');
    buffer.writeln('}');
  }

  void _writeClassWithSubclasses(StringBuffer buffer, Class folder) {
    for (final model in folder.classes) {
      _writeClassWithSubclasses(buffer, model);
    }
    buffer.writeln('class ${folder.type} extends ThemeExtension<${folder.type}> {');
    _writeClassBody(buffer, folder);
    buffer.writeln('}');
  }

  void _writeClassBody(StringBuffer buffer, Class folder) {
    _writeFields(folder, buffer);
    buffer.writeln();
    _writeConstructor(buffer, folder);
    buffer.writeln();
    _writeCopyWithMethod(buffer, folder);
    buffer.writeln();
    _writeLerpMethod(buffer, folder);
    buffer.writeln();
    _writeThemes(buffer, folder);
  }

  void _writeFields(Class folder, StringBuffer buffer) {
    for (final model in folder.nodes) {
      buffer.writeln('final ${model.type} ${model.name};');
    }
  }

  void _writeConstructor(StringBuffer buffer, Class folder) {
    buffer.writeln('const ${folder.type}(');
    if (folder.nodes.isNotEmpty) {
      buffer.writeln('{');
      for (final model in folder.nodes) {
        buffer.writeln('required this.${model.name},');
      }
      buffer.writeln('}');
    }
    buffer.writeln(');');
  }

  void _writeCopyWithMethod(StringBuffer buffer, Class folder) {
    buffer.writeln('@override');
    buffer.writeln('${folder.type} copyWith(');
    if (folder.nodes.isNotEmpty) {
      buffer.writeln('{');
      for (final model in folder.nodes) {
        buffer.writeln('${model.type}? ${model.name},');
      }
      buffer.writeln('}');
    }
    buffer.writeln(') {');
    buffer.writeln('return ${folder.type}(');
    for (final model in folder.nodes) {
      buffer.writeln('${model.name}: ${model.name} ?? this.${model.name},');
    }
    buffer.writeln(');');
    buffer.writeln('}');
  }

  void _writeLerpMethod(StringBuffer buffer, Class folder) {
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

  void _writeThemes(StringBuffer buffer, Class folder) {
    for (final theme in folder.themes) {
      buffer.writeln('static final ${folder.type} $theme = ${folder.type}(');
      for (final model in folder.nodes) {
        buffer.writeln('${model.name}: ${model.value(theme)},');
      }
      buffer.writeln(');');
    }
  }
}
