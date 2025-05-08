import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/utils/map_extension.dart';

class EnumBuilder {
  final String valueType;
  final String valueName;

  const EnumBuilder({
    required this.valueName,
    required this.valueType,
  });

  StringBuffer write(Class root, StringBuffer buffer) {
    buffer.writeln('enum ${root.classType} {');
    final StringBuffer lines = StringBuffer();
    _writeFolder(root, lines);
    final String strLines = lines.toString();
    buffer.writeln(strLines.replaceFirst(',', ';', strLines.length - 3));

    buffer.writeln();
    buffer.writeln('const ${root.classType}(this.$valueName);');
    buffer.writeln();
    buffer.writeln('final $valueType $valueName;');
    buffer.writeln('}');
    return buffer;
  }

  void _writeFolder(Class folder, StringBuffer buffer) {
    for (final node in folder.classes) {
      _writeFolder(node, buffer);
    }

    _writeModels(folder, buffer);
  }

  void _writeModels(Class folder, StringBuffer buffer) {
    if (folder.fields.isEmpty) {
      return;
    }
    buffer.writeln();
    buffer.writeln('  // ${_comment(folder)}');

    for (final item in folder.fields) {
      for (final (theme, value) in item.values.iterable) {
        buffer.writeln("${item.enumName(theme)}(${value.code}),");
      }
    }
  }

  String _comment(Class folder) {
    return [...folder.path, folder.name].where((e) => e.isNotEmpty).join('/');
  }
}
