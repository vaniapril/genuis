import 'package:genuis/src/core/data/code/entity/code_entity.dart';
import 'package:genuis/src/core/data/module.dart';

class ExtensionData {
  final Module module;
  final Module secondary;
  final List<Field> fields;

  ExtensionData({
    required this.module,
    required this.secondary,
    required this.fields,
  });
}
