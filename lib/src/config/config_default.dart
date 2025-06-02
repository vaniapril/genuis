import 'package:genuis/src/config/yaml/extension_config.dart';
import 'package:genuis/src/config/yaml/genuis_config.dart';
import 'package:genuis/src/config/yaml/module_config.dart';
import 'package:genuis/src/config/yaml/type_config.dart';

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
      type: TypeConfig.blur,
      extensions: [],
    ),
    ModuleConfig(
      name: 'colors',
      path: 'colors/',
      type: TypeConfig.color,
      extensions: [],
    ),
    ModuleConfig(
      name: 'fonts',
      path: 'fonts/',
      type: TypeConfig.font,
      extensions: [
        ExtensionConfig.colors,
      ],
    ),
    ModuleConfig(
      name: 'icons',
      path: 'icons/',
      type: TypeConfig.asset,
      extensions: [
        ExtensionConfig.colors,
        ExtensionConfig.enums,
      ],
    ),
    ModuleConfig(
      name: 'images',
      path: 'images/',
      type: TypeConfig.asset,
      extensions: [
        ExtensionConfig.enums,
      ],
    ),
    ModuleConfig(
      name: 'shadows',
      path: 'shadows/',
      type: TypeConfig.shadow,
      extensions: [
        ExtensionConfig.colors,
      ],
    ),
  ],
);
