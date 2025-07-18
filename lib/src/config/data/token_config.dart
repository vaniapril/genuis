import 'package:genuis/src/config/types/element_type.dart';
import 'package:genuis/src/config/types/token_class_type.dart';

class TokenConfig {
  String name;
  String path;
  ElementType type;
  TokenClassType classType;
  String className;
  String fieldName;

  TokenConfig({
    required this.name,
    required this.path,
    required this.type,
    required this.classType,
    required this.className,
    required this.fieldName,
  });
}
