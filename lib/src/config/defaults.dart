import 'package:genuis/src/config/types/element_type.dart';
import 'package:genuis/src/config/types/genuis_class_type.dart';
import 'package:genuis/src/config/types/token_class_type.dart';
import 'package:genuis/src/utils/string_extension.dart';

abstract class Defaults {
  //Config
  static const assetsPath = 'assets/';
  static const outputPath = 'lib/ui/';
  static const themes = ['light', 'dark'];
  static const classType = GenuisClassType.themeExtension;
  static const fromJsonMethod = true;
  static const dartLineLength = 100;
  static const className = 'UI';
  static const fieldName = 'ui';
  static const baseTheme = 'base';
  //Module
  static const moduleType = ElementType.asset;
  static const moduleColor = false;
  static const moduleOptional = false;
  static String modulePathFrom(String name) {
    return '${name.snakeCase}/';
  }

  static String moduleTokenClassName(String name) {
    return '${name}_Token'.named.camelCase.upperFirst;
  }

  //Token
  static const tokenType = ElementType.color;
  static const tokenClassType = TokenClassType.static_;
  static const tokenFieldName = 'value';
  static String tokenPathFrom(String name) {
    return '${name.snakeCase}.json';
  }

  static String tokenClassName(String name) {
    return name.named.camelCase.upperFirst;
  }
}
