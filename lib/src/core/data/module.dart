import 'package:genuis/src/config/module_config.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';

class Module {
  final ModuleConfig config;
  final Class rootClass;
  final Map<String, Field> colors;
  final List<Field> enumFields;

  Module({
    required this.config,
    required this.rootClass,
    this.colors = const {},
    this.enumFields = const [],
  });

  String get fileName => config.name;
}
