import 'dart:io';

import 'package:genuis/src/config/config.dart';
import 'package:genuis/src/config/module_config.dart';
import 'package:genuis/src/config/token_config.dart';
import 'package:genuis/src/utils/exceptions.dart';
import 'package:genuis/src/utils/file_system_entity_extension.dart';

class ConfigValidator {
  Config config;

  ConfigValidator(this.config);

  void validate() {
    _validateConfigAssetsPath();
    _validateConfigOutputPath();
    _validateConfigThemes();
    _validateConfigBaseTheme();
    // _validateConfigClassType();
    _validateConfigDartLineLength();
    _validateConfigClassName();
    _validateConfigFieldName();

    _validateConfigTokens();
    _validateConfigModules();
  }

  // Config
  void _validateConfigAssetsPath() {
    _validateFolderPath(config.assetsPath);
  }

  void _validateConfigOutputPath() {
    _validateFolderPath(config.outputPath, checkExists: false);
  }

  void _validateConfigThemes() {
    for (final theme in config.themes) {
      _validateSnakeCaseName(theme);
    }
  }

  void _validateConfigBaseTheme() {
    _validateFieldName(config.baseTheme);

    if (config.themes.contains(config.baseTheme)) {
      throw ConfigValidationException('baseTheme (${config.baseTheme}) must not be in themes (${config.themes})');
    }
  }

  void _validateConfigDartLineLength() {
    if (config.dartLineLength < 1) {
      throw ConfigValidationException('invalid dart_line_length: ${config.dartLineLength}');
    }
  }

  void _validateConfigClassName() {
    _validateClassName(config.className);
  }

  void _validateConfigFieldName() {
    _validateFieldName(config.fieldName);
  }

  // Tokens
  void _validateConfigTokens() {
    for (final token in config.tokens) {
      _validateTokenName(token);
      _validateTokenPath(token);
      // _validateTokenType(token);
      // _validateTokenClassType(token);
      _validateTokenClassName(token);
      _validateTokenFieldName(token);
    }
  }

  void _validateTokenName(TokenConfig token) {
    _validateSnakeCaseName(token.name);
  }

  void _validateTokenPath(TokenConfig token) {
    _validateFilePath(config.assetsPath + token.path);
  }

  void _validateTokenClassName(TokenConfig token) {
    _validateClassName(token.className);
  }

  void _validateTokenFieldName(TokenConfig token) {
    _validateFieldName(token.fieldName);
  }

  // Modules
  void _validateConfigModules() {
    for (final module in config.modules) {
      _validateModuleName(module);
      _validateModulePath(module);
      _validateModuleType(module);
      _validateModuleTokenClassType(module);
      _validateModuleTokenClassName(module);
      _validateModuleTokenFieldName(module);
      _validateModuleColor(module);
      _validateModuleColorClassName(module);
    }
  }

  void _validateModuleName(ModuleConfig module) {
    _validateSnakeCaseName(module.name);
  }

  void _validateModulePath(ModuleConfig module) {
    _validateFolderPath(config.assetsPath + module.path);
  }

  void _validateModuleType(ModuleConfig module) {}
  void _validateModuleTokenClassType(ModuleConfig module) {}
  void _validateModuleTokenClassName(ModuleConfig module) {
    _validateClassName(module.tokenClassName);
  }

  void _validateModuleTokenFieldName(ModuleConfig module) {
    _validateFieldName(module.tokenFieldName);
  }

  void _validateModuleColor(ModuleConfig module) {
    if (module.color) {
      if (!module.type.supportsColor) {
        throw ConfigValidationException(
            '"color: true" is not supported for ${module.type} module (${module.name})');
      }
    }
  }

  void _validateModuleColorClassName(ModuleConfig module) {
    _validateClassName(config.className);
  }

  // Utils
  static void _validateFolderPath(String value, {bool checkExists = true}) {
    if (FileSystemEntity.isDirectorySync('/$value')) {
      throw ConfigValidationException('$value is not a folder');
    }

    final directory = Directory(value);

    if (!directory.existsSync() && !checkExists) {
      throw ConfigValidationException('folder does not exist: $value');
    }
  }

  static void _validateFilePath(String value) {
    if (FileSystemEntity.isFileSync('/$value')) {
      throw ConfigValidationException('$value is not a file');
    }

    final file = File(value);

    if (!file.existsSync()) {
      throw ConfigValidationException('file does not exist: $value');
    }

    if (!file.isXml && !file.isJson) {
      throw ConfigValidationException('file is not xml or json: $value');
    }
  }

  static void _validateSnakeCaseName(String value) {
    if (value.isEmpty) {
      throw const ConfigValidationException('value is empty');
    }

    if (!RegExp(r'^[a-z0-9]+(_[a-z0-9]+)*$').hasMatch(value)) {
      throw ConfigValidationException('$value' 'is not valid name (must be snake_case)');
    }
  }

  static void _validateClassName(String value) {
    if (value.isEmpty) {
      throw const ConfigValidationException('value is empty');
    }

    if (!RegExp(r'^[A-Z][a-zA-Z0-9_]*$').hasMatch(value)) {
      throw ConfigValidationException('$value is not valid name for class (must be PascalCase)');
    }
  }

  static void _validateFieldName(String value) {
    if (value.isEmpty) {
      throw const ConfigValidationException('value is empty');
    }

    if (!RegExp(r'^[a-z][a-zA-Z0-9_]*$').hasMatch(value)) {
      throw ConfigValidationException('$value is not valid name for field (must be camelCase)');
    }
  }
}
