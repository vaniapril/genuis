import 'package:genuis/src/core/data/module.dart';
import 'package:genuis/src/core/data/token.dart';
import 'package:genuis/src/core/writers/theme_extension_writer.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/core/generators/file_generator.dart';
import 'package:genuis/src/utils/string_extension.dart';

// TODO(IvanPrylepski): refactor all
class MainClassGenerator extends FileGenerator {
  final List<Module> modules;
  final List<Token> tokens;

  const MainClassGenerator({
    required super.config,
    required this.modules,
    required this.tokens,
  });

  @override
  String get fileName => config.mainClassName.snakeCase;

  @override
  String generate() {
    final imports = config.modules.map((e) => 'import \'${e.name}.ui.dart\';').join('\n') +
        config.tokens.map((e) => 'import \'token_${e.name}.ui.dart\';').join('\n') +
        // "import 'package:core/core.dart';" +
        "import 'package:flutter/material.dart';" +
        '\n' +
        '\n' +
        // generators.map((e) => 'export \'${e.name}.ui.dart\';').join('\n') +
        // "export 'dimens.ui.dart';" +
        config.modules.map((e) => 'export \'${e.name}.ui.dart\';').join('\n') +
        config.tokens.map((e) => 'export \'token_${e.name}.ui.dart\';').join('\n') +
        "export 'build_context_extension.ui.dart';";

    StringBuffer buffer = StringBuffer();

    buffer.writeln(imports);

    final tree = Class(
      name: 'ui',
      path: [],
      classType: config.mainClassName,
      themes: config.themes,
      classes: modules
          .map(
            (e) => Class(
              name: e.config.name,
              path: [],
              classType: e.rootClass.classType,
              themes: e.rootClass.themes,
              classes: [],
              fields: [],
            ),
          )
          .toList(),
      fields: [],
    );

    ThemeExtensionWriter(config: config).writeMainClass(
      buffer,
      tree,
    );
    return buffer.toString();
  }
}
