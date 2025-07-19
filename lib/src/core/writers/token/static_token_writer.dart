import 'package:genuis/src/core/models/code/code_entities/code_entity.dart';
import 'package:genuis/src/utils/map_extension.dart';

class StaticTokenWriter {
  final String className;

  const StaticTokenWriter({
    required this.className,
  });

  void write(StringBuffer buffer, List<Field> fields) {
    buffer.writeln('abstract class $className {');
    _writeFields(buffer, fields);
    buffer.writeln('}');
  }

  void _writeFields(StringBuffer buffer, List<Field> fields) {
    buffer.writeln();
    for (final field in fields) {
      _writeField(buffer, field);
    }
  }

  void _writeField(StringBuffer buffer, Field field) {
    for (final (theme, value) in field.values.iterable) {
      buffer.writeln("static const ${field.type} ${field.enumName(theme)} = $value;");
    }
  }
}
