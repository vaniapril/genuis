import 'package:genuis/src/core/builders/base/model_builder.dart';
import 'package:genuis/src/core/data/field.dart';
import 'package:genuis/src/core/data/node.dart';

class StaticBuilder<T extends Field> {
  final String className;
  final String baseTheme;
  final Folder<T> root;

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
    _writeFolder(root, buffer);
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
      buffer.writeln("static const ${item.type} ${item.name} = ${item.value('base')};");
    }
  }

  String _comment(Folder folder) {
    return folder.path.where((e) => e.isNotEmpty).join('/');
  }
}
