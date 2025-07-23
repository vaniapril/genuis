import 'package:genuis/src/config/config.dart';
import 'package:genuis/src/core/models/module.dart';
import 'package:genuis/src/utils/string_extension.dart';

class BuildContextExtensionWriter {
  BuildContextExtensionWriter();

  void write(StringBuffer buffer, List<Module> modules) {
    buffer.writeln('extension ${Config.it.className}BuildContextExtension on BuildContext {');
    buffer.writeln(
      '${Config.it.className} get ${Config.it.fieldName} => ${Config.it.className}.of(this);',
    );

    for (final module in modules) {
      buffer.writeln(
        '${module.rootClass.classType} get ${module.config.name.asName} => ${Config.it.fieldName}.${module.config.name.asName};',
      );
    }

    buffer.writeln('}');
  }
}
