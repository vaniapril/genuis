import 'package:genuis/src/config/module_config.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';

class Module {
  final ModuleConfig config;
  final Class rootClass;
  final Map<String, Field> colorFields;
  final List<Field> tokenFields;

  Module({
    required this.config,
    required this.rootClass,
    this.colorFields = const {},
    this.tokenFields = const [],
  });

  String get fileName => config.name;
}
