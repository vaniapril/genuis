import 'package:genuis/src/config/yaml/module_config.dart';
import 'package:genuis/src/core/data/code/entity/code_entity.dart';

class Module {
  final ModuleConfig config;
  final Class rootClass;

  Module({
    required this.config,
    required this.rootClass,
  });
}
