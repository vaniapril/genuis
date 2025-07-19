import 'package:genuis/src/core/models/code/code_entities/code_entity.dart';
import 'package:genuis/src/utils/map_extension.dart';
import 'package:genuis/src/utils/string_extension.dart';

class EnumTokenWriter {
  final String className;
  final String valueType;
  final String valueName;

  const EnumTokenWriter({
    required this.className,
    required this.valueName,
    required this.valueType,
  });

  void write(StringBuffer buffer, List<Field> fields) {
    if (fields.isEmpty) return;

    buffer.writeln('enum $className {');
    final StringBuffer lines = StringBuffer();

    _writeFields(lines, fields);
    final String strLines = lines.toString();
    if (strLines.isNotEmpty) {
      buffer.writeln(strLines.replaceLast(',', ';'));
    }

    buffer.writeln();
    buffer.writeln('const $className(this.$valueName);');
    buffer.writeln();
    buffer.writeln('final $valueType $valueName;');
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
      buffer.writeln("${field.enumName(theme)}($value),");
    }
  }
}
