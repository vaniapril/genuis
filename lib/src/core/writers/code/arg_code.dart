import 'package:genuis/src/core/writers/code/code.dart';

/// ``` dart
/// {|Name|:} |Value|
/// ```
class ArgCode extends Code {
  final String? name;
  final Code value;

  ArgCode({this.name, required this.value});

  @override
  void encode(StringBuffer buffer) {
    if (name != null) buffer.write('$name: ');
    value.encode(buffer);
  }
}
