import 'package:genuis/src/config/config.dart';
import 'package:genuis/src/config/types/genuis_class_type.dart';
import 'package:genuis/src/core/generators/file_generator.dart';
import 'package:genuis/src/core/generators/generator_parts/build_context_extension_generator.dart';
import 'package:genuis/src/core/generators/generator_parts/main_class_generator.dart';
import 'package:genuis/src/core/generators/generator_parts/module_generator.dart';
import 'package:genuis/src/core/generators/generator_parts/tokens_generator.dart';
import 'package:genuis/src/core/models/module.dart';
import 'package:genuis/src/core/models/token.dart';
import 'package:genuis/src/utils/imports.dart';
import 'package:genuis/src/utils/string_extension.dart';

class GenuisGenerator extends FileGenerator {
  final List<Module> modules;
  final List<Token> tokens;

  const GenuisGenerator({
    required this.modules,
    required this.tokens,
  });

  @override
  String get fileName => Config.it.className.snakeCase;

  @override
  String generate() {
    final imports = {
      if (Config.it.classType == GenuisClassType.themeExtension ||
          Config.it.classType == GenuisClassType.getter)
        Imports.material,
    };

    for (final module in modules) {
      module.rootClass.forEach(
        (e) => imports.addAll({
          for (final value in e.values.values) ...value.imports,
        }),
      );
    }

    for (final token in tokens) {
      for (var field in token.fields) {
        imports.addAll({
          for (final value in field.values.values) ...value.imports,
        });
      }
    }

    StringBuffer buffer = StringBuffer();

    for (final import in imports) {
      buffer.writeln(import);
    }
    buffer.writeln();

    for (final module in modules) {
      ModuleGenerator(module: module).generate(buffer);
    }

    for (final token in tokens) {
      TokensGenerator(token: token).generate(buffer);
    }

    if (Config.it.classType == GenuisClassType.themeExtension ||
        Config.it.classType == GenuisClassType.getter) {
      BuildContextExtensionGenerator(modules: modules).generate(buffer);
    }

    MainClassGenerator(
      modules: modules,
      tokens: tokens,
    ).generate(buffer);

    return buffer.toString();
  }
}
