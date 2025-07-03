import 'package:genuis/src/config/yaml/genuis_config.dart';
import 'package:genuis/src/config/yaml/module_config.dart';
import 'package:genuis/src/config/yaml/module_type_config.dart';
import 'package:genuis/src/config/yaml/token_config.dart';
import 'package:genuis/src/config/yaml/token_extension_type_config.dart';

final defaultConfig = GenuisConfig(
  assetsPath: 'assets/',
  outputPath: 'lib/ui/',
  themes: [
    'light',
    'dark',
  ],
  defaultTheme: false,
  themeExtensions: true,
  fromJsonMethod: true,
  dartLineLength: 100,
  mainClassName: 'UI',
  mainGetterName: 'ui',
  baseTheme: 'base',
  tokens: [
    // TODO(IvanPrylepski): remove tokens
    TokenConfig(
      name: 'colors',
      path: 'colors.json',
      type: ModuleTypeConfig.color,
      className: 'UColors',
      classType: TokenExtensionTypeConfig.enum_,
    ),
    TokenConfig(
      name: 'heights',
      className: 'UHeights',
      path: 'heights.json',
      type: ModuleTypeConfig.number,
      classType: TokenExtensionTypeConfig.static_,
    ),
  ],
  modules: [
    ModuleConfig(
      name: 'blurs',
      path: 'blurs/',
      type: ModuleTypeConfig.blur,
      tokenExtension: null,
      tokenClassName: '',
      colorExtension: false,
      colorExtensionClassName: '',
      optional: true,
    ),
    ModuleConfig(
      name: 'colors',
      path: 'colors/',
      type: ModuleTypeConfig.color,
      tokenExtension: null,
      tokenClassName: '',
      colorExtension: false,
      colorExtensionClassName: '',
      optional: true,
    ),
    ModuleConfig(
      name: 'fonts',
      path: 'fonts/',
      type: ModuleTypeConfig.font,
      tokenExtension: null,
      tokenClassName: '',
      colorExtension: true,
      colorExtensionClassName: '',
      optional: true,
    ),
    ModuleConfig(
      name: 'icons',
      path: 'icons/',
      type: ModuleTypeConfig.asset,
      tokenExtension: TokenExtensionTypeConfig.enum_,
      tokenClassName: 'UIcons',
      colorExtension: true,
      colorExtensionClassName: '',
      optional: true,
    ),
    ModuleConfig(
      name: 'images',
      path: 'images/',
      type: ModuleTypeConfig.asset,
      tokenExtension: TokenExtensionTypeConfig.static_,
      tokenClassName: 'UImages',
      colorExtension: false,
      colorExtensionClassName: '',
      optional: true,
    ),
    ModuleConfig(
      name: 'shadows',
      path: 'shadows/',
      type: ModuleTypeConfig.shadow,
      tokenExtension: null,
      tokenClassName: '',
      colorExtension: false,
      colorExtensionClassName: '',
      optional: true,
    ),
  ],
);
