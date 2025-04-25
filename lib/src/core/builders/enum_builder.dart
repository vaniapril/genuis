import 'package:genuis/src/core/data/code_entity.dart';
import 'package:genuis/src/utils/map_extension.dart';

class EnumBuilder {
  final String basePath;
  final String valueName;
  final String valueType;
  final String enumName;
  final Class root;

  const EnumBuilder({
    required this.basePath,
    required this.enumName,
    required this.valueName,
    required this.valueType,
    required this.root,
  });

  StringBuffer code() {
    final StringBuffer buffer = StringBuffer();
    buffer.writeln('enum $enumName {');
    final StringBuffer lines = StringBuffer();
    _writeFolder(root, lines);
    final String strLines = lines.toString();
    buffer.writeln(strLines.replaceFirst(',', ';', strLines.length - 3));

    if (basePath.isNotEmpty) {
      buffer.writeln();
      buffer.writeln("static const $valueType _base = '$basePath';");
    }
    buffer.writeln();
    buffer.writeln('const $enumName(this.$valueName);');
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
        basePath.isEmpty
            ? buffer.writeln("${item.enumName(theme)}(${value.value}),")
            : buffer.writeln("${item.enumName(theme)}('\${_base}${value.value}'),");
      }
    }
  }

  String _comment(Class folder) {
    return [...folder.path, folder.name].where((e) => e.isNotEmpty).join('/');
  }
}
