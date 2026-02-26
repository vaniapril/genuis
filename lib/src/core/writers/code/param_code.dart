import 'package:genuis/src/core/writers/code/code.dart';

/// ``` dart
/// |required| |Type| |Name|,
/// ```
class ParamCode extends Code {
  final bool required_;
  final bool this_;
  final bool super_;
  final String name;
  final String? type;

  ParamCode({
    required this.name,
    this.type,
    this.required_ = false,
    this.this_ = false,
    this.super_ = false,
  });

  @override
  void encode(StringBuffer buffer) {
    if (required_) buffer.write('required ');
    if (super_) {
      buffer.write('super.');
    } else if (this_) {
      buffer.write('this.');
    } else if (type != null) {
      buffer.write(type);
      buffer.write(' ');
    }
    buffer.write(name);
  }
}
