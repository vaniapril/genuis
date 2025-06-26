library genuis;

// import 'dart:io';

import 'package:build/build.dart';
import 'package:genuis/src/config/config_default.dart';
import 'package:genuis/src/core/genuis_core.dart';
import 'package:genuis/src/generators/build_context_extension_generator.dart';
import 'package:genuis/src/generators/main_class_generator.dart';
import 'package:genuis/src/generators/module_generator.dart';
import 'package:genuis/src/generators/tokens_generator.dart';
import 'package:genuis/src/genuis_builder.dart';

Builder build(BuilderOptions options) {
  // final uiFile = File('ui.yaml');

  final config = defaultConfig; // Config.fromYamlFile(uiFile);

  final core = GenuisCore(config: config);

  return GenuisBuilder(
    config: config,
    generators: [
      ...core.modules.map((e) => ModuleGenerator(config: config, module: e)),
      ...core.tokens.map((e) => TokensGenerator(config: config, token: e)),
      BuildContextExtensionGenerator(config: config, modules: core.modules),
      MainClassGenerator(
        config: config,
        modules: core.modules,
        tokens: core.tokens,
      ),
    ],
  );
}
