library genuis;

import 'dart:io';

import 'package:build/build.dart';
import 'package:genuis/src/config/genuis_config.dart';
import 'package:genuis/src/core/genuis_core.dart';
import 'package:genuis/src/genuis_builder.dart';

Builder build(BuilderOptions options) {
  final uiFile = File('ui.yaml');
  final config = GenuisConfig.fromYamlFile(uiFile);
  final core = GenuisCore(config: config);

  return GenuisBuilder(
    config: config,
    generators: core.generators,
  );
}
