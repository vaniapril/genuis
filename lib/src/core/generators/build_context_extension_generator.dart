import 'package:genuis/src/core/data/module.dart';
import 'package:genuis/src/core/writers/build_context_extension_writer.dart';
import 'package:genuis/src/core/generators/file_generator.dart';
import 'package:genuis/src/utils/imports.dart';

class BuildContextExtensionGenerator extends FileGenerator {
  final List<Module> modules;

  const BuildContextExtensionGenerator({
    required this.modules,
  });

  @override
  String get fileName => 'build_context_extension';

  @override
  String generate() {
    final buffer = StringBuffer();
    buffer.writeln(Imports.material);
    buffer.writeln(Imports.mainClass);

    BuildContextExtensionWriter().write(buffer, modules);

    return buffer.toString();
  }
}
