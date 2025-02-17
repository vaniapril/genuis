import 'package:x_gens/src/pubspec/pubspec.dart';

const defaultOutput = 'core_ui/lib/src/theme';
const defaultAssets = 'core/resources';
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
