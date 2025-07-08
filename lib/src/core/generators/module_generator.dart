import 'package:genuis/src/config/types/element_type.dart';
import 'package:genuis/src/config/types/genuis_class_type.dart';
import 'package:genuis/src/config/types/token_class_type.dart';
import 'package:genuis/src/core/data/module.dart';
import 'package:genuis/src/core/writers/module/color_extension_writer.dart';
import 'package:genuis/src/core/writers/token/enum_token_writer.dart';
import 'package:genuis/src/core/writers/module/getter_module_writer.dart';
import 'package:genuis/src/core/writers/module/theme_extension_module_writer.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/core/generators/file_generator.dart';
import 'package:genuis/src/core/writers/token/static_token_writer.dart';
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
      if (config.classType == GenuisClassType.themeExtension) Imports.material,
      // TODO(vaniapril): colors modules import
      if (module.config.color) "import '${config.className.toLowerCase()}.ui.dart';"
    };

    root.forEach(
      (e) => imports.addAll({
        for (final value in e.values.values) ...value.imports,
      }),
    );

    for (final import in imports) {
      buffer.writeln(import);
    }

    if (module.config.tokenClassType != null) {
      switch (module.config.tokenClassType) {
        case TokenClassType.enum_:
          EnumTokenWriter(
            config: config,
            className: module.config.tokenClassName,
            valueType: module.enumFields.first.valueType,
            valueName: module.config.tokenValueName,
          ).write(
            buffer,
            module.enumFields,
          );
          break;
        case TokenClassType.static_:
          StaticTokenWriter(
            config: config,
            className: module.config.tokenClassName,
          ).write(
            buffer,
            module.enumFields,
          );
          break;
        default:
          throw 'Unknown module type: ${module.config.tokenClassType}';
      }
    }

    if (module.config.color) {
      switch (module.config.type) {
        case ElementType.font:
          ColorExtensionWriter(config: config).writeTextStyleExtensionClass(buffer, module.colors);
        case ElementType.asset:
          ColorExtensionWriter(config: config)
              .writeAssetExtensionClass(buffer, module, module.colors);
        default:
          throw 'Unknown module type: ${module.config.type}';
      }
    }

    switch (config.classType) {
      case GenuisClassType.themeExtension:
        ThemeExtensionModuleWriter(config: config).write(buffer, root);
      case GenuisClassType.getter:
        GetterModuleWriter(config: config).write(buffer, root);
    }

    return buffer.toString();
  }
}
