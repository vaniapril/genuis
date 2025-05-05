library x_gens;

import 'dart:io';

import 'package:build/build.dart';
import 'package:genuis/src/core/fields/blur_value.dart';
import 'package:genuis/src/core/fields/color_value.dart';
import 'package:genuis/src/core/fields/font_value.dart';
import 'package:genuis/src/core/fields/gradient_value.dart';
import 'package:genuis/src/core/fields/shadow_value.dart';
import 'package:genuis/src/core/parsers/file/file_parser.dart';
import 'package:genuis/src/core/x_generator.dart';
import 'package:genuis/src/generators/app_build_context_extension_builder.dart';
import 'package:genuis/src/generators/app_generator.dart';
import 'package:genuis/src/generators/asset_generator.dart';
import 'package:genuis/src/generators/config_generator.dart';
import 'package:genuis/src/generators/dimens_generator.dart';
import 'package:genuis/src/generators/tokens_generator.dart';
import 'package:genuis/src/config/pubspec.dart';
import 'package:genuis/src/utils/directory_extension.dart';
import 'package:genuis/src/utils/string_extension.dart';
import 'package:genuis/src/x_builder.dart';

Builder build(BuilderOptions options) {
  final pubspec = File('pubspec.yaml');
  // TODO(IvanPrylepski): on error
  final config = loadPubspec(pubspec);

  final assets = Directory('${pubspec.parent.path}${'/${config.xGens.assets}/'}'.forwardSlash)
      .listSync()
      .whereType<Directory>()
      .map((e) => e.name);

  final generators = <XGenerator>[];

  if (assets.contains('colors')) {
    generators.add(
      ConfigGenerator(pubspec, config, 'colors', ColorValue.tryParse, FileParser.json(),
          additionImport: "import 'tokens.ui.dart';"),
    );
  }

  if (assets.contains('fonts')) {
    generators.add(
      ConfigGenerator(pubspec, config, 'fonts', FontValue.tryParse, FileParser.json()),
    );
  }

  if (assets.contains('blurs')) {
    generators.add(
      ConfigGenerator(pubspec, config, 'blurs', BlurValue.tryParse, FileParser.json(),
          additionImport: "import 'dart:ui';", baseHasLerp: false),
    );
  }

  if (assets.contains('gradients')) {
    generators.add(
      ConfigGenerator(pubspec, config, 'gradients', GradientValue.tryParse, FileParser.json(),
          additionImport: "import 'tokens.ui.dart';"),
    );
  }

  if (assets.contains('icons')) {
    generators.add(
      AssetGenerator(pubspec, config, 'icons'),
    );
  }

  if (assets.contains('images')) {
    generators.add(
      AssetGenerator(pubspec, config, 'images'),
    );
  }

  if (assets.contains('lotties')) {
    generators.add(
      AssetGenerator(pubspec, config, 'lotties'),
    );
  }

  if (assets.contains('shaders')) {
    generators.add(
      AssetGenerator(pubspec, config, 'shaders'),
    );
  }

  if (assets.contains('shadows')) {
    generators.add(
      ConfigGenerator(pubspec, config, 'shadows', ShadowValue.tryParse, FileParser.json(),
          // TODO(IvanPrylepski): refactor
          additionImport:
              "import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as inset_shadow; import 'tokens.ui.dart';"),
    );
  }

  return XBuilder(
    [
      ...generators,
      if (assets.contains('tokens'))
        TokensGenerator(pubspec, config, 'tokens', ColorValue.tryParse, FileParser.json()),
      if (assets.contains('dimens')) DimensGenerator(pubspec, config),
      AppBuildContextExtensionGenerator(pubspec, config, generators),
      AppGenerator(pubspec, config, generators),
    ],
    config,
  );
}
