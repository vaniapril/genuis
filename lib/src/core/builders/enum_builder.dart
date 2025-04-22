import 'package:genuis/src/core/data/node.dart';
import 'package:genuis/src/utils/string_extension.dart';

class EnumBuilder<T> {
  final String basePath;
  final String valueName;
  final String valueType;
  final String enumName;
  final NodeFolder<T> root;

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
    _writeFolder(root, lines, []);
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

  void _writeFolder(NodeFolder<T> folder, StringBuffer buffer, List<String> path) {
    for (final node in folder.folders) {
      _writeFolder(node, buffer, [...path, folder.name]);
    }

    _writeModels(folder, buffer, path);
  }

  void _writeModels(NodeFolder<T> folder, StringBuffer buffer, List<String> path) {
    if (folder.items.isEmpty) {
      return;
    }
    buffer.writeln();
    buffer.writeln('  // ${_comment([...path, folder.name])}');

    for (final item in folder.items) {
      basePath.isEmpty
          ? buffer.writeln("${_enumName(item, [])}(${item.value}),")
          : buffer.writeln("${_enumName(item, [...path, folder.name])}('\${_base}${item.value}'),");
    }
  }

  String _enumName(NodeItem<T> model, List<String> path) {
    return '${path.map((e) => e.upperFirst).join()}${model.name.upperFirst}'.lowerFirst;
  }

  String _comment(List<String> path) {
    return path.where((e) => e.isNotEmpty).join('/');
  }
}
