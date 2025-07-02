import 'package:genuis/src/config/yaml/extension_config.dart';
import 'package:genuis/src/config/yaml/module_type_config.dart';
import 'package:genuis/src/core/data/module.dart';
import 'package:genuis/src/core/writers/color_extension_writer.dart';
import 'package:genuis/src/core/writers/enum_writer.dart';
import 'package:genuis/src/core/writers/getter_theme_writer.dart';
import 'package:genuis/src/core/writers/theme_extension_writer.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/generators/file_generator.dart';
import 'package:genuis/src/utils/imports.dart';

class ModuleGenerator extends FileGenerator {
  final Module module;

  const ModuleGenerator({
    required super.config,
    required this.module,
  });

  @override
  String get fileName => module.fileName;

  @override
  String generate() {
    StringBuffer buffer = StringBuffer();

    Class root = module.rootClass;

    final Set<String> imports = {
      if (config.themeExtensions) Imports.material,
      //Todo colors modules import
      if (module.config.extensions.any((e) => e is ColorsExtensionConfig))
        "import '${config.className.toLowerCase()}.ui.dart';"
    };

    root.forEach(
      (e) => imports.addAll({
        for (final value in e.values.values) ...value.imports,
      }),
    );

    for (final import in imports) {
      buffer.writeln(import);
    }

    final enumsExtension = module.config.extensions.whereType<EnumsExtensionConfig>().firstOrNull;
    if (enumsExtension != null) {
      EnumWriter(config: config, valueName: 'value', valueType: module.enumFields.first.valueType)
          .write(
        buffer,
        Class(
          name: root.name,
          path: [],
          classType: enumsExtension.name,
          themes: [],
          classes: [],
          fields: module.enumFields,
        ),
      );
    }

    final colorsExtension = module.config.extensions.whereType<ColorsExtensionConfig>().firstOrNull;
    if (colorsExtension != null) {
      switch (module.config.type) {
        case ModuleTypeConfig.font:
          ColorExtensionWriter(config: config).writeTextStyleExtensionClass(buffer, module.colors);
          break;

        case ModuleTypeConfig.asset:
          ColorExtensionWriter(config: config)
              .writeAssetExtensionClass(buffer, module, module.colors);
          break;

        default:
          throw 'Unknown module type: ${module.config.type}';
      }
    }

    if (config.themeExtensions) {
      ThemeExtensionWriter(config: config).write(buffer, root);
    } else {
      GetterThemeWriter(config: config).write(buffer, root);
    }

    return buffer.toString();
  }
}
