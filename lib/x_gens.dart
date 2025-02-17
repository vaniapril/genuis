library x_gens;

import 'dart:io';

import 'package:build/build.dart';
import 'package:x_gens/src/core/fields/blur_field.dart';
import 'package:x_gens/src/core/fields/color_field.dart';
import 'package:x_gens/src/core/fields/font_field.dart';
import 'package:x_gens/src/core/fields/gradient_field.dart';
import 'package:x_gens/src/core/fields/shadow_field.dart';
import 'package:x_gens/src/core/parsers/file/file_parser.dart';
import 'package:x_gens/src/core/x_generator.dart';
import 'package:x_gens/src/generators/app_build_context_extension_builder.dart';
import 'package:x_gens/src/generators/app_generator.dart';
import 'package:x_gens/src/generators/asset_generator.dart';
import 'package:x_gens/src/generators/asset_generator.dart';
import 'package:x_gens/src/generators/config_generator.dart';
import 'package:x_gens/src/generators/dimens_generator.dart';
import 'package:x_gens/src/generators/dimens_generator.dart';
import 'package:x_gens/src/generators/tokens_generator.dart';
import 'package:x_gens/src/pubspec/pubspec.dart';
import 'package:x_gens/src/utils/directory_extension.dart';
import 'package:x_gens/src/utils/string_extension.dart';
import 'package:x_gens/src/x_builder.dart';
import 'package:x_gens/src/generators/asset_generator.dart';
import 'package:x_gens/src/generators/dimens_generator.dart';

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
      ConfigGenerator(pubspec, config, 'colors', ColorField.tryParse, FileParser.json(),
          additionImport: "import 'tokens.x.dart';"),
    );
  }

  if (assets.contains('fonts')) {
    generators.add(
      ConfigGenerator(pubspec, config, 'fonts', FontField.tryParse, FileParser.json()),
    );
  }

  if (assets.contains('blurs')) {
    generators.add(
      ConfigGenerator(pubspec, config, 'blurs', BlurField.tryParse, FileParser.json(),
          additionImport: "import 'dart:ui';", baseHasLerp: false),
    );
  }

  if (assets.contains('gradients')) {
    generators.add(
      ConfigGenerator(pubspec, config, 'gradients', GradientField.tryParse, FileParser.json(),
          additionImport: "import 'tokens.x.dart';"),
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
      ConfigGenerator(pubspec, config, 'shadows', ShadowField.tryParse, FileParser.json(),
          // TODO(IvanPrylepski): refactor
          additionImport:
              "import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as inset_shadow; import 'tokens.x.dart';"),
    );
  }

  return XBuilder(
    [
      ...generators,
      if (assets.contains('tokens'))
        TokensGenerator(pubspec, config, 'tokens', ColorField.tryParse, FileParser.json()),
      if (assets.contains('dimens')) DimensGenerator(pubspec, config),
      AppBuildContextExtensionGenerator(pubspec, config, generators),
      AppGenerator(pubspec, config, generators),
    ],
    config,
  );
}
