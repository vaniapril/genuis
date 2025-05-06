import 'package:genuis/src/config/config.dart';
import 'package:genuis/src/core/builders/theme_extension_builder.dart';
import 'package:genuis/src/core/builders/enum_builder.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/genuis_generator.dart';
import 'package:genuis/src/utils/string_extension.dart';

class AssetGenerator extends GenuisGenerator {
  final Module module;
  final Class tree;

  const AssetGenerator(
    super.config,
    this.module,
    this.tree,
  );

  @override
  String get name => module.name;

  @override
  String generate() {
    StringBuffer buffer = EnumBuilder(
      valueName: 'value',
      valueType: 'String',
      basePath: '${config.assets}/$name',
      enumName: name.upperFirst,
      root: tree,
    ).code();

    buffer.writeln(
      ThemeExtensionBuilder(
        baseHasLerp: false,
        //baseHasLerp: false, // TODO(IvanPrylepski): lerp (T c1, T c2, double t)
        root: tree,
      ).code(),
    );

    return buffer.toString();
  }
}
