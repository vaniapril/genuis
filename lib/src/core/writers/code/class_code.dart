import 'package:genuis/src/core/writers/code/code.dart';

/// ``` dart
/// class |Name| extends |Extends| {
///   |Parts|
/// }
/// ```

class ClassCode extends Code {
  final String name;
  final bool abstract_;
  final String? extends_;
  final String? implements_;

  final List<Code> body;

  ClassCode({
    required this.name,
    this.extends_,
    this.implements_,
    this.body = const [],
    this.abstract_ = false,
  });

  @override
  void encode(StringBuffer buffer) {
    if (abstract_) buffer.write('abstract ');
    buffer.write('class $name ');
    if (extends_ != null) {
      buffer.write('extends ');
      buffer.write(extends_);
    }
    if (implements_ != null) {
      buffer.write(' implements ');
      buffer.write(implements_);
    }
    buffer.writeln('{');
    for (final code in body) {
      code.encode(buffer);
      buffer.writeln();
    }
    buffer.writeln('}');
  }

  factory ClassCode.themeExtension(String className, List<Code> body) => ClassCode(
    name: className,
    extends_: 'ThemeExtension<$className>',
    body: body,
  );
}
