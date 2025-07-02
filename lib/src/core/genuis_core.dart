import 'package:genuis/src/config/yaml/extension_config.dart';
import 'package:genuis/src/config/yaml/genuis_config.dart';
import 'package:genuis/src/config/yaml/module_type_config.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/core/data/code/flag.dart';
import 'package:genuis/src/core/data/code/value.dart';
import 'package:genuis/src/core/data/code/values/colored_value.dart';
import 'package:genuis/src/core/data/code/values/token_value.dart';
import 'package:genuis/src/core/data/module.dart';
import 'package:genuis/src/core/data/node/node.dart';
import 'package:genuis/src/core/data/token.dart';
import 'package:genuis/src/core/generators/build_context_extension_generator.dart';
import 'package:genuis/src/core/generators/file_generator.dart';
import 'package:genuis/src/core/generators/main_class_generator.dart';
import 'package:genuis/src/core/generators/module_generator.dart';
import 'package:genuis/src/core/generators/tokens_generator.dart';
import 'package:genuis/src/core/parsers/file/json_file_parser.dart';
import 'package:genuis/src/core/parsers/models_parser.dart';
import 'package:genuis/src/core/parsers/nodes_parser.dart';
import 'package:genuis/src/core/parsers/value_parser.dart';
import 'package:genuis/src/utils/list_extension.dart';
import 'package:genuis/src/utils/string_extension.dart';

class GenuisCore {
  final GenuisConfig config;

  GenuisCore({
    required this.config,
  }) {
    _init();
  }

  List<Module> _modules = [];
  List<Token> _tokens = [];

  void _init() {
    _tokens = _processTokens();
    _modules = _processModules();
  }

  List<FileGenerator> get generators => [
        ..._modules.map((e) => ModuleGenerator(config: config, module: e)),
        ..._tokens.map((e) => TokensGenerator(config: config, token: e)),
        BuildContextExtensionGenerator(config: config, modules: _modules),
        MainClassGenerator(
          config: config,
          modules: _modules,
          tokens: _tokens,
        ),
      ];

  List<Module> _processModules() {
    var rawModules = config.modules.map((e) {
      Folder node = NodesParser(
        path: config.assets + e.path,
        fileParser: e.type != ModuleTypeConfig.asset ? JsonFileParser() : null,
      ).parse();

      final valueParser = ValueParser(type: e.type, tokens: _tokens);

      Class tree = ModelsParser(
        config: config,
        root: node,
        mapper: (value) => valueParser.parse(value),
      ).parse();

      return Module(config: e, rootClass: tree);
    }).toList();

    final colorModules = rawModules.where((e) => e.config.type == ModuleTypeConfig.color).toList();

    return rawModules
        .map((module) {
          final colorExtension =
              module.config.extensions.whereType<ColorsExtensionConfig>().firstOrNull;

          if (colorExtension != null) {
            Map<String, Field> fields = {};

            for (final colorModule in colorModules) {
              colorModule.rootClass.forEach((field) {
                final Flag? flag = [for (final e in field.values.values) ...e.flags]
                    .firstWhereOrNull((e) => e.name == module.config.name);
                if (flag != null) {
                  fields[flag.value ?? field.name] = field;
                }
              });
            }

            module = Module(
              config: module.config,
              rootClass: Class(
                name: module.rootClass.name,
                path: module.rootClass.path,
                classType: module.rootClass.classType,
                themes: config.themes,
                classes: module.rootClass.classes,
                fields: module.rootClass.fields,
              ),
              colors: fields,
            );
          }

          return module;
        })
        .map((e) => _processModule(e))
        .toList();
  }

  Module _processModule(Module module) {
    final enumsExtension = module.config.extensions.whereType<EnumsExtensionConfig>().firstOrNull;
    Class root = module.rootClass;
    List<Field> enumFields = [];

    if (enumsExtension != null) {
      root = root.map(
        (field) {
          enumFields.add(field);

          return Field(
            name: field.name,
            path: field.path,
            valueType: field.valueType,
            values: field.values.map(
              (String key, Value value) {
                return MapEntry(
                  key,
                  TokenValue(
                    tokenType: enumsExtension.name,
                    tokenName: '${field.enumName(key)}.value',
                    innerValue: value,
                  ),
                );
              },
            ),
          );
        },
      );
    }

    final colorsExtension = module.config.extensions.whereType<ColorsExtensionConfig>().firstOrNull;

    if (colorsExtension != null) {
      root = root.map(
        (field) {
          return Field(
            name: field.name,
            path: field.path,
            valueType: switch (module.config.type) {
              ModuleTypeConfig.font => 'ThemedTextStyle',
              ModuleTypeConfig.asset => 'Themed${module.config.name.upperFirst}',
              _ => throw 'Unknown module type: ${module.config.type}'
            },
            //todo colors themes
            values: {
              for (final theme in config.themes)
                theme: ColoredValue(
                  coloredType: switch (module.config.type) {
                    ModuleTypeConfig.font => 'ThemedTextStyle',
                    ModuleTypeConfig.asset => 'Themed${module.config.name.upperFirst}',
                    _ => throw 'Unknown module type: ${module.config.type}'
                  },
                  theme: theme,
                  innerValue: field.values[theme] ?? field.values.values.first,
                )
            },
          );
        },
      );
    }

    return Module(
      config: module.config,
      rootClass: root,
      colors: module.colors,
      enumFields: enumFields,
    );
  }

  List<Token> _processTokens() {
    return config.tokens.map((e) {
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
  }
}
