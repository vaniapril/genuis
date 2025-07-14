import 'package:genuis/src/config/module_config.dart';
import 'package:genuis/src/config/token_config.dart';
import 'package:genuis/src/config/types/genuis_class_type.dart';

class Config {
  String assetsPath;
  String outputPath;
  List<String> themes;
  String baseTheme;
  bool defaultTheme;
  GenuisClassType classType;
  bool fromJsonMethod;
  int dartLineLength;
  String className;
  String valueName;

  List<TokenConfig> tokens;
  List<ModuleConfig> modules;

  Config({
    required this.assetsPath,
    required this.outputPath,
    required this.themes,
    required this.defaultTheme,
    required this.classType,
    required this.fromJsonMethod,
    required this.dartLineLength,
    required this.baseTheme,
    required this.className,
    required this.valueName,
    required this.tokens,
    required this.modules,
  });
}
