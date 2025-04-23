import 'package:genuis/src/core/data/value.dart';

class DimenValue extends Value {
  final String value;

  DimenValue({
    required this.value,
  });

  @override
  String get code => value;

  @override
  String get type => value.contains('.') ? 'double' : 'int';
}
