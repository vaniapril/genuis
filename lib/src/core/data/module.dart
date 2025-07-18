import 'package:genuis/src/config/configs/module_config.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';

class Module {
  final ModuleConfig config;
  final Class rootClass;
  final Map<String, Field> colorFields;
  final List<Field> tokenFields;
  final List<String> assetsList;

  Module({
    required this.config,
    required this.rootClass,
    this.colorFields = const {},
    this.tokenFields = const [],
    this.assetsList = const [],
  });

  String get fileName => config.name;

  String get importCode => "import '${config.name}.ui.dart';";
  String get exportCode => "export '${config.name}.ui.dart';";

  Module copyWith({
    ModuleConfig? config,
    Class? rootClass,
    Map<String, Field>? colorFields,
    List<Field>? tokenFields,
    List<String>? assetsList,
  }) =>
      Module(
        config: config ?? this.config,
        rootClass: rootClass ?? this.rootClass,
        colorFields: colorFields ?? this.colorFields,
        tokenFields: tokenFields ?? this.tokenFields,
        assetsList: assetsList ?? this.assetsList,
      );
}
