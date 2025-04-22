import 'package:genuis/src/core/builders/theme_extension_builder.dart';
import 'package:genuis/src/core/data/model.dart';
import 'package:genuis/src/core/data/field.dart';
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

    final rootModel = ModelFolder(
      themes: config.xGens.themes,
      name: 'UI',
      models: [
        for (final generator in generators)
          ModelFolder<Field>(
            name: generator.name,
            themes: themed.contains(generator.name) ? config.xGens.themes : [],
            models: [],
            // values: themed.contains(generator.name)
            //     ? {
            //         for (final theme in config.xGens.themes)
            //           theme: ThemeField(
            //             ttype: 'UI${generator.name.upperFirst}',
            //             ccode: 'UI${generator.name.upperFirst}.$theme',
            //           )
            //       }
            //     : {
            //         for (final theme in config.xGens.themes)
            //           theme: ThemeField(
            //             ttype: 'UI${generator.name.upperFirst}',
            //             ccode: 'UI${generator.name.upperFirst}.base',
            //           ),
            //       },
          ),
      ],
    );

    StringBuffer buffer = ThemeExtensionBuilder(
      baseHasLerp: true,
      typePrefix: '',
      typePostfix: '',
      baseTheme: 'base',
      //baseHasLerp: false, // TODO(IvanPrylepski): lerp (T c1, T c2, double t)
      root: rootModel,

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

class ThemeField extends Field {
  final String ttype;
  final String ccode;

  ThemeField({
    required this.ttype,
    required this.ccode,
  });

  @override
  String get code => ccode;

  @override
  String get type => ttype;
}
