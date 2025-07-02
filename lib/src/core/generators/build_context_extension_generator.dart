import 'package:genuis/src/core/data/module.dart';
import 'package:genuis/src/core/writers/build_context_extension_writer.dart';
import 'package:genuis/src/core/generators/file_generator.dart';
import 'package:genuis/src/utils/string_extension.dart';

class BuildContextExtensionGenerator extends FileGenerator {
  final List<Module> modules;

  const BuildContextExtensionGenerator({
    required super.config,
    required this.modules,
  });

  @override
  String get fileName => 'build_context_extension';

  @override
  String generate() {
    final buffer = StringBuffer();
    buffer.writeln("import 'package:flutter/material.dart';");
    buffer.writeln("import '${config.className.snakeCase}.ui.dart';");

    BuildContextExtensionWriter(config: config).write(buffer, modules);

    return buffer.toString();
  }
}
