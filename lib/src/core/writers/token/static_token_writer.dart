import 'package:genuis/src/config/genuis_config.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/utils/map_extension.dart';

class StaticTokenWriter {
  final GenuisConfig config;

  const StaticTokenWriter({
    required this.config,
  });

  void write(StringBuffer buffer, Class root) {
    buffer.writeln('abstract class ${root.classType} {');
    buffer.writeln();
    _writeClassWithSubclasses(buffer, root);
    buffer.writeln('}');
  }

  void _writeClassWithSubclasses(StringBuffer buffer, Class folder) {
    for (final node in folder.classes) {
      _writeClassWithSubclasses(buffer, node);
    }

    _writeFieldsInClass(buffer, folder);
  }

  void _writeFieldsInClass(StringBuffer buffer, Class folder) {
    if (folder.fields.isEmpty) {
      return;
    }
    buffer.writeln();
    buffer.writeln('  // ${_comment(folder)}');

    for (final item in folder.fields) {
      for (final (theme, value) in item.values.iterable) {
        buffer.writeln("static const ${item.type} ${item.enumName(theme)} = $value;");
      }
    }
  }

  String _comment(Class folder) {
    return [...folder.path, folder.name].where((e) => e.isNotEmpty).join('/');
  }
}
