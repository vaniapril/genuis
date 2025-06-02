library x_gens;

import 'dart:io';

import 'package:build/build.dart';
import 'package:genuis/src/config/config_default.dart';
import 'package:genuis/src/config/yaml/type_config.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/core/data/code/value.dart';
import 'package:genuis/src/core/data/code/values/string_value.dart';
import 'package:genuis/src/core/data/node/node.dart';
import 'package:genuis/src/core/parsers/file/json_file_parser.dart';
import 'package:genuis/src/core/parsers/models_parser.dart';
import 'package:genuis/src/core/parsers/nodes_parser.dart';
import 'package:genuis/src/generators/build_context_extension_generator.dart';
import 'package:genuis/src/generators/class_generator.dart';
import 'package:genuis/src/generators/module_generator.dart';
import 'package:genuis/src/generators/tokens_generator.dart';
import 'package:genuis/src/genuis_builder.dart';

Builder build(BuilderOptions options) {
  final uiFile = File('ui.yaml');

  final config = defaultConfig; // Config.fromYamlFile(uiFile);

  final tokens = config.tokens.map((e) {
    Folder node = NodesParser(
      path: config.assets + e.path,
      fileParser: e.type != TypeConfig.asset ? JsonFileParser() : null,
    ).parse();

    Class tree = ModelsParser(
      config: config,
      root: node,
      mapper: switch (e.type) {
        TypeConfig.blur => Value.parseBlur,
        TypeConfig.color => Value.parseColor,
        TypeConfig.font => Value.parseFont,
        TypeConfig.shadow => Value.parseShadow,
        TypeConfig.asset => (value) => StringValue(value: value),
      },
    ).parse();

    return (token: e, tree: tree);
  });
  final modules = config.modules.map((e) {
    Folder node = NodesParser(
      path: config.assets + e.path,
      fileParser: e.type != TypeConfig.asset ? JsonFileParser() : null,
    ).parse();

    Class tree = ModelsParser(
      config: config,
      root: node,
      mapper: switch (e.type) {
        TypeConfig.blur => Value.parseBlur,
        TypeConfig.color => Value.parseColor,
        TypeConfig.font => Value.parseFont,
        TypeConfig.shadow => Value.parseShadow,
        TypeConfig.asset => (value) => StringValue(value: value),
      },
    ).parse();

    return (model: e, tree: tree);
  });

  return GenuisBuilder(
    config: config,
    generators: [
      ...modules.map((e) => ModuleGenerator(config: config, module: e.model, tree: e.tree)),
      ...tokens.map((e) => TokensGenerator(config: config, token: e.token, tree: e.tree)),
      BuildContextExtensionGenerator(config: config),
      ClassGenerator(
        config: config,
        tree: Class(
          name: 'ui',
          path: [],
          classType: config.className,
          themes: config.themes,
          classes: modules
              .map(
                (e) => Class(
                  name: e.tree.name,
                  path: [],
                  classType: e.tree.classType,
                  themes: e.tree.themes,
                  classes: [],
                  fields: [],
                ),
              )
              .toList(),
          fields: [],
        ),
      ),
    ],
  );
}
