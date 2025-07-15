import 'package:genuis/src/config/module_config.dart';
import 'package:genuis/src/config/token_config.dart';
import 'package:genuis/src/config/types/genuis_class_type.dart';

class Config {
  String assetsPath;
  String outputPath;
  List<String> themes;
  String baseTheme;
  GenuisClassType classType;
  bool fromJsonMethod;
  int dartLineLength;
  String className;
  String fieldName;

  List<TokenConfig> tokens;
  List<ModuleConfig> modules;

  Config({
    required this.assetsPath,
    required this.outputPath,
    required this.themes,
    required this.classType,
    required this.fromJsonMethod,
    required this.dartLineLength,
    required this.baseTheme,
    required this.className,
    required this.fieldName,
    required this.tokens,
    required this.modules,
  });
}
