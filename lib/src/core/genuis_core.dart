import 'package:genuis/src/config/config.dart';
import 'package:genuis/src/config/types/element_type.dart';
import 'package:genuis/src/config/types/token_class_type.dart';
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
import 'package:genuis/src/core/parsers/models_parser.dart';
import 'package:genuis/src/core/parsers/nodes_parser.dart';
import 'package:genuis/src/core/parsers/value_parser.dart';
import 'package:genuis/src/utils/list_extension.dart';
import 'package:genuis/src/utils/string_extension.dart';

class GenuisCore {
  final Config config;

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
        path: config.assetsPath + e.path,
        parseFiles: e.type != ElementType.asset,
      ).parse();

      final valueParser = ValueParser(type: e.type, tokens: _tokens);

      Class tree = ModelsParser(
        config: config,
        root: node,
        mapper: (value) => valueParser.parse(value),
      ).parse();

      return Module(config: e, rootClass: tree);
    }).toList();

    final colorModules = rawModules.where((e) => e.config.type == ElementType.color).toList();

    return rawModules
        .map((module) {
          if (module.config.color) {
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
              rootClass: module.rootClass,
              colors: fields,
            );
          }

          return module;
        })
        .map((e) => _processModule(e))
        .toList();
  }

  Module _processModule(Module module) {
    Class root = module.rootClass;
    List<Field> enumFields = [];

    if (module.config.tokenClassType != null) {
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
                    tokenType: module.config.tokenClassName,
                    // TODO(vaniapril): name
                    tokenName:
                        '${field.enumName(key)}${module.config.tokenClassType == TokenClassType.enum_ ? '.value' : ''}',
                    innerValue: value,
                  ),
                );
              },
            ),
          );
        },
      );
    }

    if (module.config.color) {
      var colorThemesSet = {
        for (final themes in module.colors.values.map((e) => e.values.keys)) ...themes
      };

      colorThemesSet.remove('base');
      final colorThemes = colorThemesSet.isEmpty ? ['base'] : colorThemesSet.toList();

      root = root.map(
        (field) {
          final type = switch (module.config.type) {
            ElementType.font => 'ThemedTextStyle',
            ElementType.asset => 'Themed${module.config.name.upperFirst}',
            // TODO(vaniapril): error
            _ => throw 'Unknown module type: ${module.config.type}'
          };

          return Field(
            name: field.name,
            path: field.path,
            valueType: type,
            values: {
              for (final theme in colorThemes)
                theme: ColoredValue(
                  coloredType: type,
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
        path: config.assetsPath + e.path,
        parseFiles: e.type != ElementType.asset,
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
