import 'package:genuis/src/config/yaml/module_type_config.dart';
import 'package:genuis/src/core/data/module.dart';
import 'package:genuis/src/core/writers/module/color_extension_writer.dart';
import 'package:genuis/src/core/writers/token/enum_token_writer.dart';
import 'package:genuis/src/core/writers/module/getter_module_writer.dart';
import 'package:genuis/src/core/writers/module/theme_extension_module_writer.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/core/generators/file_generator.dart';
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
      if (module.config.colorExtension) "import '${config.mainClassName.toLowerCase()}.ui.dart';"
    };

    root.forEach(
      (e) => imports.addAll({
        for (final value in e.values.values) ...value.imports,
      }),
    );

    for (final import in imports) {
      buffer.writeln(import);
    }

    if (module.config.tokenExtension != null) {
      EnumTokenWriter(
              config: config, valueName: 'value', valueType: module.enumFields.first.valueType)
          .write(
        buffer,
        Class(
          name: root.name,
          path: [],
          classType: module.config.tokenClassName,
          themes: [],
          classes: [],
          fields: module.enumFields,
        ),
      );
    }

    if (module.config.colorExtension) {
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
      ThemeExtensionModuleWriter(config: config).write(buffer, root);
    } else {
      GetterModuleWriter(config: config).write(buffer, root);
    }

    return buffer.toString();
  }
}
