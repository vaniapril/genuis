import 'package:genuis/src/config/yaml/extension_config.dart';
import 'package:genuis/src/core/data/code/value.dart';
import 'package:genuis/src/core/data/code/values/token_value.dart';
import 'package:genuis/src/core/data/module.dart';
import 'package:genuis/src/core/writers/enum_writer.dart';
import 'package:genuis/src/core/writers/getter_theme_writer.dart';
import 'package:genuis/src/core/writers/theme_extension_writer.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/genuis_generator.dart';

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

    buffer.writeln("import 'package:flutter/material.dart';");
    buffer.writeln("import '${config.className}.ui.dart';");
    buffer.writeln("import 'dart:ui';");

    Class root = module.rootClass;

    final enumsExtension = module.config.extensions.whereType<EnumsExtensionConfig>().firstOrNull;

    if (enumsExtension != null) {
      List<Field> fields = [];

      root = module.rootClass.map(
        (field) {
          fields.add(field);

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

      EnumWriter(config: config, valueName: 'value', valueType: fields.first.valueType).write(
        buffer,
        Class(
          name: root.name,
          path: [],
          classType: enumsExtension.name,
          themes: [],
          classes: [],
          fields: fields,
        ),
      );
    }

    if (config.themeExtensions) {
      ThemeExtensionWriter(config: config).write(buffer, root);
    } else {
      GetterThemeWriter(config: config).write(buffer, root);
    }

    return buffer.toString();
  }
}
