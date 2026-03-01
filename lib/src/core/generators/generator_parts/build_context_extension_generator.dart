import 'package:genuis/src/core/models/module.dart';
import 'package:genuis/src/core/writers/build_context_extension_writer.dart';

class BuildContextExtensionGenerator {
  final List<Module> modules;

  const BuildContextExtensionGenerator({
    required this.modules,
  });

  void generate(StringBuffer buffer) {
    BuildContextExtensionWriter().write(buffer, modules);
  }
}
