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
    _tokens = _parseTokens();
    _modules = _parseModules();
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

  List<Token> _parseTokens() {
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

  List<Module> _parseModules() {
    var modules = config.modules.map((e) {
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

    modules = _collectColorFields(modules);
    modules = _collectAndWrapTokenFields(modules);
    modules = _wrapColorFields(modules);
    return modules;
  }

  List<Module> _collectColorFields(List<Module> modules) {
    final colorModules = modules.where((e) => e.config.type == ElementType.color);

    final colorFields = [
      for (final module in colorModules)
        ...module.rootClass.flattenFields.where((e) => e.flags.isNotEmpty)
    ];

    return modules.map((module) {
      if (!module.config.color) {
        return module;
      }
      Map<String, Field> fields = {};

      for (final colorField in colorFields) {
        final Flag? flag = colorField.flags.firstWhereOrNull((e) => e.name == module.config.name);
        if (flag != null) {
          fields[flag.value ?? colorField.name] = colorField;
        }
      }

      return module.copyWith(
        colorFields: fields,
        additionalImports: colorModules.map((e) => e.importCode).toList(),
      );
    }).toList();
  }

  List<Module> _collectAndWrapTokenFields(List<Module> modules) {
    return modules.map((module) {
      if (module.config.tokenClassType == null) {
        return module;
      }

      List<Field> tokenFields = [];

      final rootClass = module.rootClass.map(
        (field) {
          tokenFields.add(field);

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

      return module.copyWith(
        rootClass: rootClass,
        tokenFields: tokenFields,
      );
    }).toList();
  }

  List<Module> _wrapColorFields(List<Module> modules) {
    return modules.map((module) {
      if (!module.config.color) {
        return module;
      }

      var colorThemesSet = {
        for (final themes in module.colorFields.values.map((e) => e.values.keys)) ...themes
      }..remove('');

      final colorThemes = colorThemesSet.isEmpty ? [''] : colorThemesSet.toList();

      final rootClass = module.rootClass.map(
        (field) {
          final type = switch (module.config.type) {
            ElementType.font => 'ThemedTextStyle',
            ElementType.asset => 'Themed${module.config.name.camelCase.upperFirst}',
            _ => ''
          };

          return Field(
            name: field.name,
            path: field.path,
            valueType: type,
            values: {
              for (final theme in colorThemes)
                theme: ColoredValue(
                  coloredType: type,
                  theme: theme.isEmpty ? config.themes.first : theme,
                  innerValue: field.values[theme] ?? field.values.values.first,
                )
            },
          );
        },
      );

      return module.copyWith(rootClass: rootClass);
    }).toList();
  }
}
