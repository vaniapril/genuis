import 'package:x_gens/src/core/data/field.dart';

class EnumField extends Field {
  final String enumName;
  final String enumType;

  EnumField({
    required this.enumType,
    required this.enumName,
  });

  @override
  String get code => '$type.$enumName';

  @override
  String get type => enumType;
}
