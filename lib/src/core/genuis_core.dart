import 'package:genuis/src/config/config.dart';
import 'package:genuis/src/config/types/element_type.dart';
import 'package:genuis/src/config/types/token_class_type.dart';
import 'package:genuis/src/core/models/code/code_entities/code_entity.dart';
import 'package:genuis/src/core/models/code/flag.dart';
import 'package:genuis/src/core/models/code/value.dart';
import 'package:genuis/src/core/models/code/values/colored_value.dart';
import 'package:genuis/src/core/models/code/values/string_value.dart';
import 'package:genuis/src/core/models/code/values/token_value.dart';
import 'package:genuis/src/core/models/module.dart';
import 'package:genuis/src/core/models/nodes/node.dart';
import 'package:genuis/src/core/models/token.dart';
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
  GenuisCore() {
    _init();
  }

  List<Module> _modules = [];
  List<Token> _tokens = [];

  void _init() {
    _tokens = _parseTokens();
    _modules = _parseModules();
  }

  List<FileGenerator> get generators => [
    ..._modules.map((e) => ModuleGenerator(module: e)),
    ..._tokens.map((e) => TokensGenerator(token: e)),
    BuildContextExtensionGenerator(modules: _modules),
    MainClassGenerator(
      modules: _modules,
      tokens: _tokens,
    ),
  ];

  List<Token> _parseTokens() {
    return Config.it.tokens.map((e) {
      Folder node = NodesParser(
        path: Config.it.assetsPath + e.path,
        parseFiles: e.type != ElementType.asset,
        parseThemes: false,
        rootName: e.name,
      ).parse();

      final valueParser = ValueParser(
        type: e.type,
      );

      Class tree = ModelsParser(
        root: node,
        mapper: (value) => valueParser.parse(value),
      ).parse();

      return Token(config: e, fields: tree.flattenFields);
    }).toList();
  }

  List<Module> _parseModules() {
    var modules = Config.it.modules.map((e) {
      final path = Config.it.assetsPath + e.path;
      Folder node = NodesParser(
        path: path,
        parseFiles: e.type != ElementType.asset,
        parseThemes: true,
        rootName: e.name,
      ).parse();

      final valueParser = ValueParser(
        path: path,
        type: e.type,
        tokens: _tokens,
      );

      Class tree = ModelsParser(
        root: node,
        mapper: (value) => valueParser.parse(value),
      ).parse();

      return Module(config: e, rootClass: tree);
    }).toList();

    modules = _collectAssetsList(modules);
    modules = _collectColorFields(modules);
    modules = _collectAndWrapTokenFields(modules);
    modules = _wrapColorFields(modules);
    return modules;
  }

  List<Module> _collectAssetsList(List<Module> modules) {
    return modules.map((module) {
      if (module.config.type != ElementType.asset) {
        return module;
      }

      final Set<String> assetsSet = {};

      module.rootClass.forEach((field) {
        for (final value in field.values.values) {
          if (value is StringValue) {
            assetsSet.add('${value.value.withoutFile}/');
          }
        }
      });

      return module.copyWith(
        assetsList: assetsSet.toList()..sort(),
      );
    }).toList();
  }

  List<Module> _collectColorFields(List<Module> modules) {
    final colorModules = modules.where((e) => e.config.type == ElementType.color);

    final colorFields = [
      for (final module in colorModules)
        ...module.rootClass.flattenFields.where((e) => e.flags.isNotEmpty),
    ];

    return modules.map((module) {
      if (!module.config.color) {
        return module;
      }
      Map<String, Field> fields = {};

      for (final colorField in colorFields) {
        final Flag? flag = colorField.flags.firstWhereOrNull((e) => e.name == module.config.name);
        if (flag != null) {
          fields[flag.value?.asName ?? colorField.name] = colorField;
        }
      }

      return module.copyWith(
        colorFields: fields,
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
            valueType: module.config.tokenClassType == TokenClassType.enum_
                ? module.config.tokenClassName
                : field.valueType,
            values: field.values.map(
              (String key, Value value) {
                return MapEntry(
                  key,
                  TokenValue(
                    tokenType: module.config.tokenClassName,
                    tokenName: field.enumName(key),
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
        for (final themes in module.colorFields.values.map((e) => e.values.keys)) ...themes,
      }..remove(Config.it.baseTheme.asName);

      final colorThemes = colorThemesSet.isEmpty
          ? [Config.it.baseTheme.asName]
          : colorThemesSet.toList();

      final rootClass = module.rootClass.map(
        (field) {
          return Field(
            name: field.name,
            path: field.path,
            valueType: module.config.colorClassName,
            values: {
              for (final theme in colorThemes)
                theme: ColoredValue(
                  coloredType: module.config.colorClassName,
                  theme: theme,
                  innerValue: field.values[theme] ?? field.values.values.first,
                ),
            },
          );
        },
      );

      return module.copyWith(rootClass: rootClass);
    }).toList();
  }
}
