import 'package:genuis/src/config/yaml/module_config.dart';
import 'package:genuis/src/config/yaml/token_config.dart';
import 'package:genuis/src/core/data/module.dart';
import 'package:genuis/src/core/data/token.dart';
import 'package:genuis/src/core/writers/theme_extension_builder.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/genuis_generator.dart';
import 'package:genuis/src/utils/string_extension.dart';

// TODO(IvanPrylepski): refactor all
class MainClassGenerator extends GenuisGenerator {
  final List<Module> modules;
  final List<Token> tokens;

  const MainClassGenerator({
    required super.config,
    required this.modules,
    required this.tokens,
  });

  @override
  String get name => config.className;

  @override
  String generate() {
    final themed = ['colors', 'shadows'];

    final imports = config.modules.map((e) => 'import \'${e.name}.ui.dart\';').join('\n') +
        // "import 'package:core/core.dart';" +
        "import 'package:flutter/material.dart';" +
        '\n' +
        '\n' +
        // generators.map((e) => 'export \'${e.name}.ui.dart\';').join('\n') +
        // "export 'dimens.ui.dart';" +
        "export 'ui_build_context_extension.ui.dart';";

    StringBuffer buffer = StringBuffer();

    buffer.writeln(imports);

    final tree = Class(
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
    );

    // final root = Class(
    //   name: 'ui',
    //   classType: 'UI',
    //   path: [],
    //   themes: config.themes,
    //   classes: [
    //     for (final generator in config.modules)
    //       Class(
    //         name: generator.name,
    //         themes: themed.contains(generator.name) ? config.themes : ['base'],
    //         classType: 'UI${generator.name.upperFirst}',
    //         path: ['UI'],
    //         classes: [],
    //         fields: [],
    //         // values: themed.contains(generator.name)
    //         //     ? {
    //         //         for (final theme in config.xGens.themes)
    //         //           theme: ThemeValue(
    //         //             ttype: 'UI${generator.name.upperFirst}',
    //         //             ccode: 'UI${generator.name.upperFirst}.$theme',
    //         //           )
    //         //       }
    //         //     : {
    //         //         for (final theme in config.xGens.themes)
    //         //           theme: ThemeValue(
    //         //             ttype: 'UI${generator.name.upperFirst}',
    //         //             ccode: 'UI${generator.name.upperFirst}.base',
    //         //           ),
    //         //       },
    //       ),
    //   ],
    //   fields: [],
    // );

    const ThemeExtensionBuilder().write(tree, buffer);

    buffer.writeln(
      '''
  factory UI.of(BuildContext context) {
    return Theme.of(context).extension<UI>() ?? UI.dark;
  }
''',
    );

    return buffer.toString();
  }
}
