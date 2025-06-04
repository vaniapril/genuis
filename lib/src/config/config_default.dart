import 'package:genuis/src/config/yaml/extension_config.dart';
import 'package:genuis/src/config/yaml/genuis_config.dart';
import 'package:genuis/src/config/yaml/module_config.dart';
import 'package:genuis/src/config/yaml/module_type_config.dart';

final defaultConfig = GenuisConfig(
  assets: 'assets/',
  output: 'lib/ui/',
  themes: [
    'light',
    'dark',
  ],
  defaultTheme: false,
  themeExtensions: true,
  fromToJson: true,
  lineLength: 100,
  className: 'UI',
  separator: '-',
  prefix: 'UI',
  baseTheme: 'base',
  tokens: [],
  modules: [
    ModuleConfig(
      name: 'blurs',
      path: 'blurs/',
      type: ModuleTypeConfig.blur,
      extensions: [],
    ),
    ModuleConfig(
      name: 'colors',
      path: 'colors/',
      type: ModuleTypeConfig.color,
      extensions: [],
    ),
    ModuleConfig(
      name: 'fonts',
      path: 'fonts/',
      type: ModuleTypeConfig.font,
      extensions: [
        ColorsExtensionConfig(),
      ],
    ),
    ModuleConfig(
      name: 'icons',
      path: 'icons/',
      type: ModuleTypeConfig.asset,
      extensions: [
        ColorsExtensionConfig(),
        EnumsExtensionConfig(
          name: 'Icons',
        ),
      ],
    ),
    ModuleConfig(
      name: 'images',
      path: 'images/',
      type: ModuleTypeConfig.asset,
      extensions: [
        EnumsExtensionConfig(
          name: 'Images',
        ),
      ],
    ),
    ModuleConfig(
      name: 'shadows',
      path: 'shadows/',
      type: ModuleTypeConfig.shadow,
      extensions: [
        EnumsExtensionConfig(
          name: 'Shadows',
        ),
      ],
    ),
  ],
);
