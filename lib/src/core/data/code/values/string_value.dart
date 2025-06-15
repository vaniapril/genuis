import 'package:genuis/src/core/data/code/value.dart';

class StringValue extends Value {
  final String value;

  const StringValue({
    required this.value,
  });

  @override
  String get type => 'String';

  @override
  List<String> get imports => [];

  @override
  String toString() => "'$value'";
}
