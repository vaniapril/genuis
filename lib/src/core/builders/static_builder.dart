import 'package:genuis/src/core/data/code_entity.dart';

class StaticBuilder {
  final String className;
  final String baseTheme;
  final Class root;

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
      buffer.writeln("static const ${item.type} ${item.name} = ${item.value('base')};");
    }
  }

  String _comment(Class folder) {
    return folder.path.where((e) => e.isNotEmpty).join('/');
  }
}
