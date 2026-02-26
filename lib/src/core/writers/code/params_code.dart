import 'package:genuis/src/core/writers/code/code.dart';
import 'package:genuis/src/core/writers/code/param_code.dart';

/// ``` dart
/// (|Args|, [|OptionalArgs|], {|NamedArgs|});
/// ```
class ParamsCode extends Code {
  final List<ParamCode> params;
  final List<ParamCode> namedParams;
  final List<ParamCode> optionalParams;

  const ParamsCode({
    this.params = const [],
    this.namedParams = const [],
    this.optionalParams = const [],
  });

  @override
  void encode(StringBuffer buffer) {
    buffer.write('(');
    for (final param in params) {
      param.encode(buffer);
      buffer.write(', ');
    }
    if (optionalParams.isNotEmpty) {
      buffer.write(',[ ');
      for (final param in optionalParams) {
        param.encode(buffer);
        buffer.write(', ');
      }
      buffer.write(']');
      if (namedParams.isNotEmpty) buffer.write(', ');
    }
    if (namedParams.isNotEmpty) {
      buffer.write('{ ');
      for (final param in namedParams) {
        param.encode(buffer);
        buffer.write(', ');
      }
      buffer.write('}');
    }
    buffer.write(')');
  }
}
