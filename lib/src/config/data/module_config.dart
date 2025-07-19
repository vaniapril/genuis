import 'package:genuis/src/config/types/element_type.dart';
import 'package:genuis/src/config/types/token_class_type.dart';

class ModuleConfig {
  final String name;
  final String path;
  final ElementType type;
  final TokenClassType? tokenClassType;
  final String tokenClassName;
  final String tokenFieldName;
  final bool color;
  final String colorClassName;
  final String colorFieldName;
  final String? colorRecordClassName;

  ModuleConfig({
    required this.name,
    required this.path,
    required this.type,
    required this.tokenClassType,
    required this.tokenClassName,
    required this.tokenFieldName,
    required this.color,
    required this.colorClassName,
    required this.colorFieldName,
    required this.colorRecordClassName,
  });
}
