library x_gens;

import 'dart:io';

import 'package:build/build.dart';
import 'package:genuis/src/config/config_default.dart';
import 'package:genuis/src/config/yaml/module_type_config.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/core/data/module.dart';
import 'package:genuis/src/core/data/node/node.dart';
import 'package:genuis/src/core/data/token.dart';
import 'package:genuis/src/core/parsers/file/json_file_parser.dart';
import 'package:genuis/src/core/parsers/models_parser.dart';
import 'package:genuis/src/core/parsers/nodes_parser.dart';
import 'package:genuis/src/core/parsers/value_parser.dart';
import 'package:genuis/src/generators/build_context_extension_generator.dart';
import 'package:genuis/src/generators/main_class_generator.dart';
import 'package:genuis/src/generators/module_generator.dart';
import 'package:genuis/src/generators/tokens_generator.dart';
import 'package:genuis/src/genuis_builder.dart';

Builder build(BuilderOptions options) {
  final uiFile = File('ui.yaml');

  final config = defaultConfig; // Config.fromYamlFile(uiFile);

  final tokens = config.tokens.map((e) {
    Folder node = NodesParser(
      path: config.assets + e.path,
      fileParser: e.type != ModuleTypeConfig.asset ? JsonFileParser() : null,
    ).parse();

    final valueParser = ValueParser(
      type: e.type,
    );

    Class tree = ModelsParser(
      config: config,
      root: node,
      mapper: (value) => valueParser.parse(value),
    ).parse();

    return Token(config: e, fields: tree.fields);
  }).toList();

  final modules = config.modules.map((e) {
    Folder node = NodesParser(
      path: config.assets + e.path,
      fileParser: e.type != ModuleTypeConfig.asset ? JsonFileParser() : null,
    ).parse();

    final valueParser = ValueParser(type: e.type, tokens: tokens);

    Class tree = ModelsParser(
      config: config,
      root: node,
      mapper: (value) => valueParser.parse(value),
    ).parse();

    return Module(config: e, rootClass: tree);
  }).toList();

  return GenuisBuilder(
    config: config,
    generators: [
      ...modules.map((e) => ModuleGenerator(config: config, module: e)),
      ...tokens.map((e) => TokensGenerator(config: config, token: e)),
      BuildContextExtensionGenerator(config: config),
      MainClassGenerator(
        config: config,
        modules: modules,
        tokens: tokens,
      ),
    ],
  );
}
