import 'package:genuis/src/config/config.dart';
import 'package:genuis/src/config/types/element_type.dart';

abstract class ConfigValidator {
  static void validate(Config config) {
    // assetsPath
    _validateFolderPath(config.assetsPath);
    // outputPath
    _validateFolderPath(config.outputPath, checkExists: false);
    // themes
    for (final theme in config.themes) {
      _validateFieldName(theme);
    }
    // baseTheme
    _validateFieldName(config.baseTheme);
    // defaultTheme
    // -
    // classType
    // -
    // fromJsonMethod
    // -
    // dartLineLength
    if (config.dartLineLength < 1) {
      throw Exception('Invalid dartLineLength: ${config.dartLineLength}');
    }
    // className
    _validateClassName(config.className);
    // valueName
    _validateFieldName(config.valueName);

    // tokens
    for (final token in config.tokens) {
      // name
      _validateName(token.name);
      // path
      _validateFilePath(token.path);
      // type
      // -
      // classType
      // -
      // className
      _validateClassName(config.className);
      // valueName
      _validateFieldName(config.valueName);
    }

    // modules
    for (final module in config.modules) {
      // name
      _validateName(module.name);
      // path
      _validateFilePath(module.path);
      // type
      // -
      // tokenClassType
      // -
      // tokenClassName
      _validateClassName(config.className);
      // tokenValueName
      _validateFieldName(config.valueName);
      // color
      if (module.color) {
        if (module.type != ElementType.asset && module.type != ElementType.font) {
          throw Exception('Cannot use color extension on ${module.type} module');
        }
      }
      // colorClassName
      _validateClassName(config.className);
      // optional
      // -
    }
  }

  static void _validateFolderPath(String value, {bool checkExists = true}) {
    // TODO(vaniapril):
  }

  static void _validateFilePath(String value) {
    // TODO(vaniapril):
  }

  static void _validateName(String value) {
    // TODO(vaniapril):
  }

  static void _validateClassName(String value) {
    // TODO(vaniapril):
  }

  static void _validateFieldName(String value) {
    // TODO(vaniapril):
  }
}
