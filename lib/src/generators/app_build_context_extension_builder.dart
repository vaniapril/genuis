import 'package:x_gens/src/core/x_generator.dart';

class AppBuildContextExtensionGenerator extends XGenerator {
  final List<XGenerator> generators;

  const AppBuildContextExtensionGenerator(
    super.pubspec,
    super.config,
    this.generators,
  );

  @override
  String get name => 'ui_build_context_extension';

  @override
  String get ignores => '';

  @override
  String get imports => "import 'package:flutter/material.dart';import 'ui.x.dart';";

  @override
  String generate() {
    final buffer = StringBuffer();

    buffer.writeln('extension UIBuildContextExtension on BuildContext {');
    buffer.writeln('UI get ui => UI.of(this);');
    buffer.writeln('}');

    return buffer.toString();
  }
}
