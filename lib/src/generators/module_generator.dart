import 'package:genuis/src/config/yaml/module_config.dart';
import 'package:genuis/src/core/builders/getter_theme_builder.dart';
import 'package:genuis/src/core/builders/theme_extension_builder.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/genuis_generator.dart';

class ModuleGenerator extends GenuisGenerator {
  final ModuleConfig module;
  final Class tree;

  const ModuleGenerator({
    required super.config,
    required this.module,
    required this.tree,
  });

  @override
  String get name => module.name;

  @override
  String generate() {
    StringBuffer buffer = StringBuffer();

    buffer.writeln("import 'package:flutter/material.dart';");
    buffer.writeln("import 'dart:ui';");

    Class root = tree;

    // if (module.extensions.contains(Extension.enums)) {
    //   List<Field> fields = [];

    //   root = tree.map(
    //     (field) {
    //       return Field(
    //         name: field.name,
    //         path: field.path,
    //         valueType: field.valueType,
    //         values: field.values.map(
    //           (String key, Value value) {
    //             return MapEntry(
    //               key,
    //               TokenValue(
    //                 tokenType: 'TokenType',
    //                 tokenName: field.name + key,
    //                 innerValue: value,
    //               ),
    //             );
    //           },
    //         ),
    //       );
    //     },
    //   );

    //   const EnumBuilder(valueName: '', valueType: '').write(
    //     Class(
    //       name: root.name,
    //       path: [],
    //       classType: 'EnumName',
    //       themes: [],
    //       classes: [],
    //       fields: fields,
    //     ),
    //     buffer,
    //   );
    // }

    if (config.themeExtensions) {
      const ThemeExtensionBuilder().write(root, buffer);
    } else {
      const GetterThemeBuilder().write(root, buffer);
    }

    return buffer.toString();
  }
}
