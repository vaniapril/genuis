import 'package:genuis/src/config/config.dart';
import 'package:genuis/src/config/types/element_type.dart';
import 'package:genuis/src/config/types/genuis_class_type.dart';
import 'package:genuis/src/config/types/token_class_type.dart';
import 'package:genuis/src/core/models/module.dart';
import 'package:genuis/src/core/writers/module/color_extension_getter_writer.dart';
import 'package:genuis/src/core/writers/module/color_extension_writer.dart';
import 'package:genuis/src/core/writers/module/getter_module_writer.dart';
import 'package:genuis/src/core/writers/token/enum_token_writer.dart';
import 'package:genuis/src/core/writers/module/interface_module_writer.dart';
import 'package:genuis/src/core/writers/module/theme_extension_module_writer.dart';
import 'package:genuis/src/core/writers/token/static_token_writer.dart';

class ModuleGenerator {
  final Module module;

  const ModuleGenerator({
    required this.module,
  });

  void generate(StringBuffer buffer) {
    if (module.config.tokenClassType != null) {
      if (module.config.tokenClassType == TokenClassType.enum_) {
        EnumTokenWriter(
          className: module.config.tokenClassName,
          valueType: module.tokenFields.first.valueType,
          valueName: module.config.tokenFieldName,
        ).write(
          buffer,
          module.tokenFields,
        );
      } else if (module.config.tokenClassType == TokenClassType.static_) {
        StaticTokenWriter(
          className: module.config.tokenClassName,
        ).write(
          buffer,
          module.tokenFields,
        );
      }
    }

    if (module.config.color) {
      if (Config.it.classType == GenuisClassType.getter) {
        if (module.config.type == ElementType.font) {
          ColorExtensionGetterWriter(
            colorClassName: module.config.colorClassName,
            colorFieldName: module.config.colorFieldName,
          ).writeTextStyleExtensionClass(buffer, module, module.colorFields);
        } else {
          ColorExtensionGetterWriter(
            colorClassName: module.config.colorClassName,
            colorFieldName: module.config.colorFieldName,
          ).writeAssetExtensionClass(buffer, module, module.colorFields);
        }
      } else {
        if (module.config.type == ElementType.font) {
          ColorExtensionWriter(
            colorClassName: module.config.colorClassName,
            colorFieldName: module.config.colorFieldName,
          ).writeTextStyleExtensionClass(
            buffer,
            module,
            module.colorFields.map((e, v) => MapEntry(e.$2, v)),
          );
        } else {
          ColorExtensionWriter(
            colorClassName: module.config.colorClassName,
            colorFieldName: module.config.colorFieldName,
          ).writeAssetExtensionClass(
            buffer,
            module,
            module.colorFields.map((e, v) => MapEntry(e.$2, v)),
          );
        }
      }
    }

    switch (Config.it.classType) {
      case GenuisClassType.themeExtension:
        const ThemeExtensionModuleWriter().write(buffer, module.rootClass);
      case GenuisClassType.interface_:
        const InterfaceModuleWriter().write(buffer, module.rootClass);
      case GenuisClassType.getter:
        const GetterModuleWriter().write(buffer, module.rootClass);
    }
  }
}
