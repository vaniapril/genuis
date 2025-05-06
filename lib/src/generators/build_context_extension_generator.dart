import 'package:genuis/src/genuis_generator.dart';
import 'package:genuis/src/utils/string_extension.dart';

class BuildContextExtensionGenerator extends GenuisGenerator {
  const BuildContextExtensionGenerator(
    super.config,
  );

  @override
  String get name => 'ui_build_context_extension';

  @override
  String generate() {
    final buffer = StringBuffer();
    buffer.writeln("import 'package:flutter/material.dart';");
    buffer.writeln("import '${config.className.snakeCase}.ui.dart';");

    buffer.writeln('extension UIBuildContextExtension on BuildContext {');
    buffer.writeln('${config.className} get ui => ${config.className}.of(this);');
    buffer.writeln('}');

    return buffer.toString();
  }
}
