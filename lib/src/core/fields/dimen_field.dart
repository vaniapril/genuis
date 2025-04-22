import 'package:genuis/src/core/data/field.dart';

class DimenField extends Field {
  final String value;

  DimenField({
    required this.value,
  });

  @override
  String get code => value;

  @override
  String get type => value.contains('.') ? 'double' : 'int';
}
