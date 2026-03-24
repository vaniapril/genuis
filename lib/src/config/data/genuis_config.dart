import 'package:genuis/src/config/data/module_config.dart';
import 'package:genuis/src/config/data/token_config.dart';
import 'package:genuis/src/config/types/genuis_class_type.dart';
import 'package:genuis/src/utils/string_extension.dart';

class GenuisConfig {
  final String package;
  final String assetsPath;
  final String outputPath;
  final List<String> themes;
  final String baseTheme;
  final GenuisClassType classType;
  final int dartLineLength;
  final String className;
  final String fieldName;
  final String postfix;

  final List<TokenConfig> tokens;
  final List<ModuleConfig> modules;

  GenuisConfig({
    required this.package,
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

  late final List<String> themeNames = themes.map((e) => e.asName).toList();
}
