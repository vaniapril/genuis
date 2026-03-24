import 'package:genuis/src/config/types/element_type.dart';
import 'package:genuis/src/config/types/token_class_type.dart';

class TokenConfig {
  final String name;
  final String path;
  final ElementType type;
  final TokenClassType classType;
  final String className;
  final String fieldName;
  final bool usePackage;
  
  const TokenConfig({
    required this.name,
    required this.path,
    required this.type,
    required this.classType,
    required this.className,
    required this.fieldName,
    required this.usePackage,
  });
}
