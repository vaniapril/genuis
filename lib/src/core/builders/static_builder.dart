import 'package:x_gens/src/core/data/field.dart';
import 'package:x_gens/src/core/data/node.dart';

class StaticBuilder<T extends Field> {
  final String className;
  final String baseTheme;
  final NodeFolder<T> root;

  const StaticBuilder({
    required this.className,
    required this.baseTheme,
    required this.root,
  });

  StringBuffer code() {
    final StringBuffer buffer = StringBuffer();
    buffer.writeln('class $className {');

    buffer.writeln();
    //buffer.writeln("static const $className _instance = $className._();");
    //buffer.writeln("static const $className $baseTheme = _instance;");
    //buffer.writeln();
    //buffer.writeln('const $className._();');
    //buffer.writeln('factory $className() => _instance;');
    buffer.writeln();
    _writeFolder(root, buffer, []);
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
      buffer.writeln("static const ${item.value.type} ${item.name} = ${item.value.code};");
    }
  }

  String _comment(List<String> path) {
    return path.where((e) => e.isNotEmpty).join('/');
  }
}
