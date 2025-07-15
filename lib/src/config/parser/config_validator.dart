import 'dart:io';

import 'package:genuis/src/config/config.dart';
import 'package:genuis/src/config/module_config.dart';
import 'package:genuis/src/config/token_config.dart';
import 'package:genuis/src/config/types/element_type.dart';

class ConfigValidator {
  Config config;

  ConfigValidator(this.config);

  void validate() {
    _validateConfigAssetsPath();
    _validateConfigOutputPath();
    _validateConfigThemes();
    _validateConfigBaseTheme();
    // _validateConfigDefaultTheme();
    // _validateConfigClassType();
    // _validateConfigFromJsonMethod();
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
      _validateFieldName(theme);
    }
  }

  void _validateConfigBaseTheme() {
    _validateFieldName(config.baseTheme);
  }

  void _validateConfigDartLineLength() {
    if (config.dartLineLength < 1) {
      throw Exception('Invalid dartLineLength: ${config.dartLineLength}');
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
    _validateName(token.name);
  }

  void _validateTokenPath(TokenConfig token) {
    _validateFilePath(token.path);
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
    _validateName(module.name);
  }

  void _validateModulePath(ModuleConfig module) {
    _validateFilePath(module.path);
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
      if (module.type != ElementType.asset && module.type != ElementType.font) {
        throw Exception('Cannot use color extension on ${module.type} module');
      }
    }
  }

  void _validateModuleColorClassName(ModuleConfig module) {
    _validateClassName(config.className);
  }

  // Utils
  static void _validateFolderPath(String value, {bool checkExists = true}) {
    if (!Directory(value).existsSync() && !checkExists) {
      throw Exception('Folder does not exist: $value');
    }
  }

  static void _validateFilePath(String value) {
    if (!File(value).existsSync()) {
      throw Exception('File does not exist: $value');
    }
  }

  static void _validateName(String value) {
    if (value.isEmpty) {
      throw Exception('Invalid name: $value');
    }
  }

  static void _validateClassName(String value) {
    if (value.isEmpty) {
      throw Exception('Invalid className: $value');
    }
  }

  static void _validateFieldName(String value) {
    if (value.isEmpty) {
      throw Exception('Invalid fieldName: $value');
    }
  }
}
