import 'package:genuis/src/core/builders/theme_extension_builder.dart';
import 'package:genuis/src/core/data/code_entity.dart';
import 'package:genuis/src/core/data/value.dart';
import 'package:genuis/src/core/x_generator.dart';
import 'package:genuis/src/utils/string_extension.dart';

// TODO(IvanPrylepski): refactor all
class AppGenerator extends XGenerator {
  final List<XGenerator> generators;

  const AppGenerator(
    super.pubspec,
    super.config,
    this.generators,
  );

  @override
  String get name => 'ui';

  @override
  String get ignores => '';

  @override
  String get imports =>
      generators.map((e) => 'import \'${e.name}.ui.dart\';').join('\n') +
      // "import 'package:core/core.dart';" +
      "import 'package:flutter/material.dart';" +
      '\n' +
      '\n' +
      // generators.map((e) => 'export \'${e.name}.ui.dart\';').join('\n') +
      // "export 'dimens.ui.dart';" +
      "export 'ui_build_context_extension.ui.dart';";

  @override
  String generate() {
    final themed = ['colors', 'shadows'];

    final root = Class(
      name: 'UI',
      type: 'UI',
      path: [],
      themes: config.xGens.themes,
      classes: [
        for (final generator in generators)
          Class(
            name: generator.name,
            themes: themed.contains(generator.name) ? config.xGens.themes : ['base'],
            type: 'UI${generator.name.upperFirst}',
            path: ['UI'],
            classes: [],
            fields: [],
            // values: themed.contains(generator.name)
            //     ? {
            //         for (final theme in config.xGens.themes)
            //           theme: ThemeValue(
            //             ttype: 'UI${generator.name.upperFirst}',
            //             ccode: 'UI${generator.name.upperFirst}.$theme',
            //           )
            //       }
            //     : {
            //         for (final theme in config.xGens.themes)
            //           theme: ThemeValue(
            //             ttype: 'UI${generator.name.upperFirst}',
            //             ccode: 'UI${generator.name.upperFirst}.base',
            //           ),
            //       },
          ),
      ],
      fields: [],
    );

    StringBuffer buffer = ThemeExtensionBuilder(
      baseHasLerp: true,
      //baseHasLerp: false, // TODO(IvanPrylepski): lerp (T c1, T c2, double t)
      root: root,

      // TODO(IvanPrylepski): refactor
      additions: '''
  factory UI.of(BuildContext context) {
    return Theme.of(context).extension<UI>() ?? UI.dark;
  }
''',
    ).code();

    return buffer.toString();
  }
}

class ThemeValue extends Value {
  final String ttype;
  final String ccode;

  ThemeValue({
    required this.ttype,
    required this.ccode,
  });

  @override
  String get code => ccode;

  @override
  String get type => ttype;
}
