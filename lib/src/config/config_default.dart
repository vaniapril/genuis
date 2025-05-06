import 'package:genuis/src/config/config.dart';

final defaultConfig = Config(
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
  tokens: [],
  modules: [
    Module(
      name: 'blurs',
      path: 'blurs/',
      type: UIType.blur,
      extensions: [],
    ),
    Module(
      name: 'colors',
      path: 'colors/',
      type: UIType.color,
      extensions: [],
    ),
    Module(
      name: 'fonts',
      path: 'fonts/',
      type: UIType.font,
      extensions: [
        Extension.colors,
      ],
    ),
    Module(
      name: 'icons',
      path: 'icons/',
      type: UIType.asset,
      extensions: [
        Extension.colors,
        Extension.enums,
      ],
    ),
    Module(
      name: 'images',
      path: 'images/',
      type: UIType.asset,
      extensions: [
        Extension.enums,
      ],
    ),
    Module(
      name: 'shadows',
      path: 'shadows/',
      type: UIType.shadow,
      extensions: [
        Extension.colors,
      ],
    ),
  ],
);
