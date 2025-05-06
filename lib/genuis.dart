library x_gens;

import 'dart:io';

import 'package:build/build.dart';
import 'package:genuis/src/config/config.dart';
import 'package:genuis/src/core/fields/blur_value.dart';
import 'package:genuis/src/core/fields/color_value.dart';
import 'package:genuis/src/core/fields/font_value.dart';
import 'package:genuis/src/core/fields/gradient_value.dart';
import 'package:genuis/src/core/fields/shadow_value.dart';
import 'package:genuis/src/core/parsers/file/file_parser.dart';
import 'package:genuis/src/genuis_generator.dart';
import 'package:genuis/src/generators/build_context_extension_generator.dart';
import 'package:genuis/src/generators/class_generator.dart';
import 'package:genuis/src/generators/asset_generator.dart';
import 'package:genuis/src/generators/config_generator.dart';
import 'package:genuis/src/generators/dimens_generator.dart';
import 'package:genuis/src/generators/tokens_generator.dart';
import 'package:genuis/src/utils/directory_extension.dart';
import 'package:genuis/src/utils/string_extension.dart';
import 'package:genuis/src/genuis_builder.dart';
import 'package:source_gen/source_gen.dart';

Builder build(BuilderOptions options) {
  final pubspecFile = File('pubspec.yaml');
  final uiFile = File('ui.yaml');

  final config = Config.fromYamlFile(uiFile);

  final modules = config.modules.map((e) => ModuleGenerator(config, e));
  final tokens = config.tokens.map((e) => TokenGenerator(config, e));


final rootNode = NodesParser(
      path: fullPath,
      parser: FileParser.asset(fullPath),
    ).parse();

    final root = ModelsParser(
      root: rootNode,
      prefix: 'UI',
      mapper: (value, {theme}) {
        final name =
            '${value.withoutExtension.pathCamelCase.replaceAll(theme?.upperFirst ?? '-', '')}${theme != null && theme != 'base' ? theme.upperFirst : ''}';

        stdout.writeln('M: {$name} $theme');

        return TokenValue(
          tokenType: folder.upperFirst,
          valueType: 'String',
          tokenValue: value,
          tokenName: name,
        );
      },
    ).parse();

  return GenuisBuilder(
    [
      ...modules,
      ...tokens,
      AppBuildContextExtensionGenerator(pubspec, config, generators),
      AppGenerator(pubspec, config, generators),
    ],
    config,
  );
}
