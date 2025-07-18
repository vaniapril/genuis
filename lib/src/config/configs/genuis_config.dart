import 'package:genuis/src/config/configs/module_config.dart';
import 'package:genuis/src/config/configs/token_config.dart';
import 'package:genuis/src/config/types/genuis_class_type.dart';

class GenuisConfig {
  String assetsPath;
  String outputPath;
  List<String> themes;
  String baseTheme;
  GenuisClassType classType;
  int dartLineLength;
  String className;
  String fieldName;
  String postfix;

  List<TokenConfig> tokens;
  List<ModuleConfig> modules;

  GenuisConfig({
    required this.assetsPath,
    required this.outputPath,
    required this.themes,
    required this.classType,
    required this.dartLineLength,
    required this.baseTheme,
    required this.className,
    required this.fieldName,
    required this.postfix,
    required this.tokens,
    required this.modules,
  });
}
