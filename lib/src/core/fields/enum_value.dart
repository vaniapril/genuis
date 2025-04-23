import 'package:genuis/src/core/data/value.dart';

class EnumValue extends Value {
  final String enumName;
  final String enumType;

  EnumValue({
    required this.enumType,
    required this.enumName,
  });

  @override
  String get code => '$type.$enumName';

  @override
  String get type => enumType;
}
