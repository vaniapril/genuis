import 'package:genuis/src/pubspec/pubspec.dart';

const defaultOutput = 'lib/config/ui';
const defaultAssets = 'assets';
const defaultFolder = '';
const defaultFile = 'theme';
const defaultLineLength = 100;
const defaultThemes = ['light', 'dark'];

const defaultConfig = Gens(
  output: defaultOutput,
  assets: defaultAssets,
  folder: defaultFolder,
  file: defaultFile,
  lineLength: defaultLineLength,
  themes: defaultThemes,
);
