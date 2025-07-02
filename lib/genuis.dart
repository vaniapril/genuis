library genuis;

import 'package:build/build.dart';
import 'package:genuis/src/config/config_default.dart';
import 'package:genuis/src/core/genuis_core.dart';
import 'package:genuis/src/genuis_builder.dart';

Builder build(BuilderOptions options) {
  // final uiFile = File('ui.yaml');

  final config = defaultConfig; // Config.fromYamlFile(uiFile);

  final core = GenuisCore(config: config);

  return GenuisBuilder(
    config: config,
    generators: core.generators,
  );
}
