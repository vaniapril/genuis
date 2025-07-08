import 'package:genuis/src/config/genuis_config.dart';
import 'package:genuis/src/core/data/module.dart';

class BuildContextExtensionWriter {
  final GenuisConfig config;

  BuildContextExtensionWriter({
    required this.config,
  });

  void write(StringBuffer buffer, List<Module> modules) {
    buffer.writeln('extension ${config.className}BuildContextExtension on BuildContext {');
    buffer.writeln(
        '${config.className} get ${config.valueName} => ${config.className}.of(this);');

    for (final module in modules) {
      buffer.writeln(
          '${module.rootClass.classType} get ${module.config.name} => ${config.valueName}.${module.config.name};');
    }

    buffer.writeln('}');
  }
}
