import 'package:genuis/src/config/types/token_class_type.dart';

abstract class Defaults {
  //Config
  static const configAssetsPath = 'assets/';
  static const configOutputPath = 'lib/ui/';
  static const configThemes = ['light', 'dark'];
  static const configDefaultTheme = false;
  static const configThemeExtensions = true;
  static const configFromJsonMethod = true;
  static const configDartLineLength = 100;
  static const configMainClassName = 'UI';
  static const configMainGetterName = 'ui';
  static const configBaseTheme = 'base';
  //Module
  static const configModuleColorExtension = false;
  static const configModuleOptional = false;
  //Token
  static const configTokenClassType = TokenClassType.static_;
  static const configTokenValueName = 'value';
}
