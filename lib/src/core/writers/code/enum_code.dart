import 'package:genuis/src/core/writers/code/code.dart';

class EnumCode extends Code {
  final String name;
  final List<String> items;
  final List<Code>? body;

  EnumCode({
    required this.name,
    required this.items,
    this.body,
  });

  @override
  void encode(StringBuffer buffer) {
    buffer.write('enum $name { ');
    buffer.writeAll(items, ', ');
    if (body != null) {
      buffer.writeln(';');
      for (final code in body ?? []) {
        code.encode(buffer);
        buffer.writeln();
      }
    }
    buffer.write('}');
  }
}
