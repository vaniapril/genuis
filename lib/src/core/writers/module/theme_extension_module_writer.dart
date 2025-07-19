import 'package:genuis/src/core/models/code/code_entities/code_entity.dart';

class ThemeExtensionModuleWriter {
  const ThemeExtensionModuleWriter();

  void write(StringBuffer buffer, Class root) {
    _writeClassWithSubclasses(buffer, root);
  }

  void writeMainClass(StringBuffer buffer, Class class_) {
    buffer.writeln('class ${class_.type} extends ThemeExtension<${class_.type}> {');
    _writeClassBody(buffer, class_);
    buffer.writeln();
    _writeMainClassFactory(buffer, class_);
    buffer.writeln('}');
  }

  void _writeMainClassFactory(StringBuffer buffer, Class class_) {
    buffer.writeln('factory ${class_.type}.of(BuildContext context) {');
    buffer.writeln(
        'return Theme.of(context).extension<${class_.type}>() ?? ${class_.type}.${class_.themes.first};');
    buffer.writeln('}');
  }

  void _writeClassWithSubclasses(StringBuffer buffer, Class class_) {
    for (final model in class_.classes) {
      _writeClassWithSubclasses(buffer, model);
    }
    buffer.writeln('class ${class_.type} extends ThemeExtension<${class_.type}> {');
    _writeClassBody(buffer, class_);
    buffer.writeln('}');
  }

  void _writeClassBody(StringBuffer buffer, Class class_) {
    _writeFields(buffer, class_);
    buffer.writeln();
    _writeConstructor(buffer, class_);
    buffer.writeln();
    _writeCopyWithMethod(buffer, class_);
    buffer.writeln();
    _writeLerpMethod(buffer, class_);
    buffer.writeln();
    _writeThemes(buffer, class_);
  }

  void _writeFields(StringBuffer buffer, Class class_) {
    for (final model in class_.nodes) {
      buffer.writeln('final ${model.type} ${model.name};');
    }
  }

  void _writeConstructor(StringBuffer buffer, Class class_) {
    buffer.writeln('const ${class_.type}(');
    if (class_.nodes.isNotEmpty) {
      buffer.writeln('{');
      for (final model in class_.nodes) {
        buffer.writeln('required this.${model.name},');
      }
      buffer.writeln('}');
    }
    buffer.writeln(');');
  }

  void _writeCopyWithMethod(StringBuffer buffer, Class class_) {
    buffer.writeln('@override');
    buffer.writeln('${class_.type} copyWith(');
    if (class_.nodes.isNotEmpty) {
      buffer.writeln('{');
      for (final model in class_.nodes) {
        buffer.writeln('${model.type}? ${model.name},');
      }
      buffer.writeln('}');
    }
    buffer.writeln(') {');
    buffer.writeln('return ${class_.type}(');
    for (final model in class_.nodes) {
      buffer.writeln('${model.name}: ${model.name} ?? this.${model.name},');
    }
    buffer.writeln(');');
    buffer.writeln('}');
  }

  void _writeLerpMethod(StringBuffer buffer, Class class_) {
    buffer.writeln('@override');
    buffer.writeln('${class_.type} lerp(ThemeExtension<${class_.type}>? other, double t) {');
    buffer.writeln('if (other is! ${class_.type}) return this;');
    buffer.writeln('if (identical(this, other)) return this;');
    buffer.writeln('return ${class_.type}(');
    for (final model in class_.nodes) {
      buffer.writeln(
        '${model.name}:${model.lerpCode(model.name, 'other.${model.name}')},',
      );
    }
    buffer.writeln(');');
    buffer.writeln('}');
  }

  void _writeThemes(StringBuffer buffer, Class class_) {
    for (final theme in class_.themes) {
      buffer.writeln('static final ${class_.type} $theme = ${class_.type}(');
      for (final model in class_.nodes) {
        buffer.writeln('${model.name}: ${model.value(theme)},');
      }
      buffer.writeln(');');
    }
  }
}
