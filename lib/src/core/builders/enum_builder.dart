import 'package:genuis/src/core/data/field.dart';
import 'package:genuis/src/core/data/node.dart';
import 'package:genuis/src/utils/string_extension.dart';
import 'package:genuis/src/core/builders/base/model_builder.dart';

class EnumBuilder<T extends Field> {
  final String basePath;
  final String valueName;
  final String valueType;
  final String enumName;
  final Folder<T> root;

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

  void _writeFolder(Folder<T> folder, StringBuffer buffer) {
    for (final node in folder.folders) {
      _writeFolder(node, buffer);
    }

    _writeModels(folder, buffer);
  }

  void _writeModels(Folder<T> folder, StringBuffer buffer) {
    if (folder.items.isEmpty) {
      return;
    }
    buffer.writeln();
    buffer.writeln('  // ${_comment(folder)}');

    for (final item in folder.items) {
      basePath.isEmpty
          ? buffer.writeln("${_enumName(item)}(${item.value('base')}),")
          : buffer.writeln("${_enumName(item)}('\${_base}${item.value('base')}'),");
    }
  }

  String _enumName(Item<T> model) {
    return '${model.path.map((e) => e.upperFirst).join()}${model.name.upperFirst}'.lowerFirst;
  }

  String _comment(Folder<T> folder) {
    return [...folder.path, folder.name].where((e) => e.isNotEmpty).join('/');
  }
}
