import 'package:genuis/src/config/config.dart';
import 'package:genuis/src/config/types/element_type.dart';
import 'package:genuis/src/config/types/genuis_class_type.dart';
import 'package:genuis/src/config/types/token_class_type.dart';
import 'package:genuis/src/core/data/module.dart';
import 'package:genuis/src/core/writers/module/color_extension_writer.dart';
import 'package:genuis/src/core/writers/token/enum_token_writer.dart';
import 'package:genuis/src/core/writers/module/getter_module_writer.dart';
import 'package:genuis/src/core/writers/module/theme_extension_module_writer.dart';
import 'package:genuis/src/core/generators/file_generator.dart';
import 'package:genuis/src/core/writers/token/static_token_writer.dart';
import 'package:genuis/src/utils/imports.dart';

class ModuleGenerator extends FileGenerator {
  final Module module;

  const ModuleGenerator({
    required this.module,
  });

  @override
  String get fileName => module.fileName;

  @override
  String generate() {
    StringBuffer buffer = StringBuffer();

    final Set<String> imports = {
      if (Config.it.classType == GenuisClassType.themeExtension) Imports.material,
      if (module.config.color) Imports.mainClass,
    };

    module.rootClass.forEach(
      (e) => imports.addAll({
        for (final value in e.values.values) ...value.imports,
      }),
    );

    for (final import in imports) {
      buffer.writeln(import);
    }

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
      if (module.config.type == ElementType.font) {
        ColorExtensionWriter(
          colorRecordClassName: module.config.colorRecordClassName,
          colorClassName: module.config.colorClassName,
          colorFieldName: module.config.colorFieldName,
        ).writeTextStyleExtensionClass(buffer, module.colorFields);
      } else {
        ColorExtensionWriter(
          colorRecordClassName: module.config.colorRecordClassName,
          colorClassName: module.config.colorClassName,
          colorFieldName: module.config.colorFieldName,
        ).writeAssetExtensionClass(buffer, module, module.colorFields);
      }
    }

    switch (Config.it.classType) {
      case GenuisClassType.themeExtension:
        const ThemeExtensionModuleWriter().write(buffer, module.rootClass);
      case GenuisClassType.getter:
        const GetterModuleWriter().write(buffer, module.rootClass);
    }

    return buffer.toString();
  }
}
