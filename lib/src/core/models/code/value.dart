import 'package:genuis/src/core/models/code/flag.dart';

abstract class Value {
  final List<Flag> flags;

  const Value({
    this.flags = const [],
  });

  String get type;
  Set<String> get imports;
  String lerpCode(String arg1, String arg2) => 't < 0.5 ? $arg1 : $arg2';
}
