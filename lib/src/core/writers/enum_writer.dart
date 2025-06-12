import 'package:genuis/src/config/yaml/genuis_config.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/utils/map_extension.dart';

class EnumWriter {
  final GenuisConfig config;
  final String valueType;
  final String valueName;

  const EnumWriter({
    required this.config,
    required this.valueName,
    required this.valueType,
  });

  StringBuffer write(StringBuffer buffer, Class root) {
    if (root.fields.isEmpty) return buffer;

    buffer.writeln('enum ${root.classType} {');
    final StringBuffer lines = StringBuffer();
    _writeClassWithSubclasses(lines, root);
    final String strLines = lines.toString();
    if (strLines.isNotEmpty) {
      buffer.writeln(strLines.replaceFirst(',', ';', strLines.length - 3));
    }

    buffer.writeln();
    buffer.writeln('const ${root.classType}(this.$valueName);');
    buffer.writeln();
    buffer.writeln('final $valueType $valueName;');
    buffer.writeln('}');
    return buffer;
  }

  void _writeClassWithSubclasses(StringBuffer buffer, Class folder) {
    for (final node in folder.classes) {
      _writeClassWithSubclasses(buffer, node);
    }

    _writeFields(buffer, folder);
  }

  void _writeFields(StringBuffer buffer, Class folder) {
    if (folder.fields.isEmpty) {
      return;
    }
    buffer.writeln();
    buffer.writeln('  // ${_comment(folder)}');

    for (final item in folder.fields) {
      for (final (theme, value) in item.values.iterable) {
        buffer.writeln("${item.enumName(theme)}($value),");
      }
    }
  }

  String _comment(Class folder) {
    return [...folder.path, folder.name].where((e) => e.isNotEmpty).join('/');
  }
}
