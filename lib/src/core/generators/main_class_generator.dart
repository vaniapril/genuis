import 'package:genuis/src/config/config.dart';
import 'package:genuis/src/config/types/genuis_class_type.dart';
import 'package:genuis/src/core/models/module.dart';
import 'package:genuis/src/core/models/token.dart';
import 'package:genuis/src/core/writers/assets_list_writer.dart';
import 'package:genuis/src/core/writers/module/getter_module_writer.dart';
import 'package:genuis/src/core/writers/module/theme_extension_module_writer.dart';
import 'package:genuis/src/core/models/code/code_entities/code_entity.dart';
import 'package:genuis/src/core/generators/file_generator.dart';
import 'package:genuis/src/utils/imports.dart';
import 'package:genuis/src/utils/string_extension.dart';

class MainClassGenerator extends FileGenerator {
  final List<Module> modules;
  final List<Token> tokens;

  const MainClassGenerator({
    required this.modules,
    required this.tokens,
  });

  @override
  String get fileName => Config.it.className.snakeCase;

  @override
  String generate() {
    final imports = [
      ...modules.map((e) => e.importCode),
      if (Config.it.classType == GenuisClassType.themeExtension) Imports.material,
    ];

    final exports = [
      ...modules.map((e) => e.exportCode),
      ...tokens.map((e) => e.exportCode),
      Imports.buildContextExtensionExport,
    ];

    StringBuffer buffer = StringBuffer();

    for (final import in imports) {
      buffer.writeln(import);
    }
    buffer.writeln();
    for (final export in exports) {
      buffer.writeln(export);
    }

    AssetsListWriter().write(buffer, modules);

    final tree = Class(
      name: Config.it.fieldName,
      path: [],
      classType: Config.it.className,
      themes: Config.it.themes,
      classes: modules
          .map(
            (e) => Class(
              name: e.config.name.asName,
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

    switch (Config.it.classType) {
      case GenuisClassType.themeExtension:
        const ThemeExtensionModuleWriter().writeMainClass(
          buffer,
          tree,
        );
      case GenuisClassType.getter:
        const GetterModuleWriter().writeMainClass(
          buffer,
          tree,
        );
    }

    return buffer.toString();
  }
}
