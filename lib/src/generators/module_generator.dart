import 'package:genuis/src/config/yaml/extension_config.dart';
import 'package:genuis/src/config/yaml/module_type_config.dart';
import 'package:genuis/src/core/data/code/value.dart';
import 'package:genuis/src/core/data/code/values/colored_value.dart';
import 'package:genuis/src/core/data/code/values/token_value.dart';
import 'package:genuis/src/core/data/module.dart';
import 'package:genuis/src/core/writers/color_extension_writer.dart';
import 'package:genuis/src/core/writers/enum_writer.dart';
import 'package:genuis/src/core/writers/getter_theme_writer.dart';
import 'package:genuis/src/core/writers/theme_extension_writer.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/genuis_generator.dart';
import 'package:genuis/src/utils/imports.dart';
import 'package:genuis/src/utils/string_extension.dart';

class ModuleGenerator extends GenuisGenerator {
  final Module module;

  const ModuleGenerator({
    required super.config,
    required this.module,
  });

  @override
  String get name => module.config.name;

  @override
  String generate() {
    StringBuffer buffer = StringBuffer();

    Class root = module.rootClass;

    final enumsExtension = module.config.extensions.whereType<EnumsExtensionConfig>().firstOrNull;

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

    final colorExtension = module.config.extensions.whereType<ColorsExtensionConfig>().firstOrNull;

    if (colorExtension != null) {
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

    final Set<String> imports = {
      "import '${config.className.toLowerCase()}.ui.dart';",
      if (config.themeExtensions) Imports.material,
    };
    root.forEach(
      (e) => imports.addAll({
        for (final value in e.values.values) ...value.imports,
      }),
    );
    
    for (final import in imports) {
      buffer.writeln(import);
    }

    if (enumsExtension != null) {
      EnumWriter(config: config, valueName: 'value', valueType: enumFields.first.valueType).write(
        buffer,
        Class(
          name: root.name,
          path: [],
          classType: enumsExtension.name,
          themes: [],
          classes: [],
          fields: enumFields,
        ),
      );
    }

    if (colorExtension != null) {
      switch (module.config.type) {
        case ModuleTypeConfig.font:
          ColorExtensionWriter(config: config).writeTextStyleExtensionClass(buffer, module.colors);
          break;

        case ModuleTypeConfig.asset:
          ColorExtensionWriter(config: config)
              .writeAssetExtensionClass(buffer, module, module.colors);
          break;

        default:
          throw 'Unknown module type: ${module.config.type}';
      }
    }

    if (config.themeExtensions) {
      ThemeExtensionWriter(config: config).write(buffer, root);
    } else {
      GetterThemeWriter(config: config).write(buffer, root);
    }

    return buffer.toString();
  }
}
