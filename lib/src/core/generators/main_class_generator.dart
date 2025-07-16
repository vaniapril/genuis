import 'package:genuis/src/config/types/genuis_class_type.dart';
import 'package:genuis/src/core/data/module.dart';
import 'package:genuis/src/core/data/token.dart';
import 'package:genuis/src/core/writers/module/getter_module_writer.dart';
import 'package:genuis/src/core/writers/module/theme_extension_module_writer.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/core/generators/file_generator.dart';
import 'package:genuis/src/utils/imports.dart';
import 'package:genuis/src/utils/string_extension.dart';

class MainClassGenerator extends FileGenerator {
  final List<Module> modules;
  final List<Token> tokens;

  const MainClassGenerator({
    required super.config,
    required this.modules,
    required this.tokens,
  });

  @override
  String get fileName => config.className.snakeCase;

  @override
  String generate() {
    final imports = [
      ...modules.map((e) => e.importCode),
      ...tokens.map((e) => e.importCode),
      if (config.classType == GenuisClassType.themeExtension) Imports.material,
    ];

    final exports = [
      ...modules.map((e) => e.exportCode),
      ...tokens.map((e) => e.exportCode),
      Imports.buildContextExtensionExport(config),
    ];

    StringBuffer buffer = StringBuffer();

    for (final import in imports) {
      buffer.writeln(import);
    }
    buffer.writeln();
    for (final export in exports) {
      buffer.writeln(export);
    }

    final tree = Class(
      name: config.fieldName,
      path: [],
      classType: config.className,
      themes: config.themes,
      classes: modules
          .map(
            (e) => Class(
              name: e.config.name,
              path: [],
              classType: e.rootClass.classType,
              themes: e.rootClass.themes,
              classes: [],
              fields: [],
            ),
          )
          .toList(),
      fields: [],
    );

    switch (config.classType) {
      case GenuisClassType.themeExtension:
        ThemeExtensionModuleWriter(config: config).writeMainClass(
          buffer,
          tree,
        );
      case GenuisClassType.getter:
        GetterModuleWriter(config: config).writeMainClass(
          buffer,
          tree,
        );
    }

    return buffer.toString();
  }
}
