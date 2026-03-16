import 'package:genuis/src/core/writers/code/code.dart';

/// ``` dart
/// |static| |const| |final| |Type| |Name| |= Value|;
/// ```
class FieldCode extends Code {
  final bool static;
  final bool final_;
  final bool const_;
  final String name;
  final String? type;
  final Code? value;

  FieldCode({
    this.static = false,
    this.final_ = false,
    this.const_ = false,
    required this.name,
    this.type,
    this.value,
  });

  @override
  void encode(StringBuffer buffer) {
    if (static) {
      buffer.write('static ');
    }
    if (const_) {
      buffer.write('const ');
    }
    if (final_) {
      buffer.write('final ');
    }
    if (type != null) {
      buffer.write('$type ');
    }
    buffer.write(name);
    if (value != null) {
      buffer.write(' = ');
      value?.encode(buffer);
    }
    buffer.write(';');
  }

  factory FieldCode.final_(String type, String name) => FieldCode(
    final_: true,
    type: type,
    name: name,
  );

  factory FieldCode.themeConst(
    String className,
    String fieldName,
    List<(String, String)> namesValues,
  ) => FieldCode(
    static: true,
    final_: true,
    name: fieldName,
    type: className,
    value: [
      '$className(',
      for (final nameValue in namesValues) '${nameValue.$1}: ${nameValue.$2},',
      ')',
    ].code,
  );
}
