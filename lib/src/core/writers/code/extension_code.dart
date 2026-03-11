import 'package:genuis/src/core/writers/code/code.dart';

class ExtensionCode extends Code {
  final String name;
  final String on;
  final List<Code> body;

  ExtensionCode({
    required this.name,
    required this.on,
    required this.body,
  });

  @override
  void encode(StringBuffer buffer) {
    buffer.write('extension $name on $on { ');
    for (final code in body) {
      code.encode(buffer);
      buffer.writeln();
    }
    buffer.write('}');
  }
}
