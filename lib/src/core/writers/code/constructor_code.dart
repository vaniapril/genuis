import 'package:genuis/src/core/writers/code/code.dart';
import 'package:genuis/src/core/writers/code/param_code.dart';
import 'package:genuis/src/core/writers/code/params_code.dart';

/// ``` dart
/// |const| |Name| (|Args|, [|OptionalArgs|], {|NamedArgs|});
/// ```
class ConstructorCode extends Code {
  final bool const_;
  final bool factory;
  final String type;
  final String? name;
  final ParamsCode params;
  final Code? body;

  ConstructorCode({
    this.const_ = false,
    this.factory = false,
    required this.type,
    this.name,
    this.params = const ParamsCode(),
    this.body,
  });

  @override
  void encode(StringBuffer buffer) {
    if (const_) buffer.write('const ');
    if (factory) buffer.write('factory ');
    buffer.write(type);
    if (name != null) buffer.write('.$name');
    params.encode(buffer);
    if (body != null) {
      buffer.writeln('{ ');
      body?.encode(buffer);
      buffer.write('}');
    } else {
      buffer.writeln(';');
    }
  }

  factory ConstructorCode.ofContextFactory(String className, String defaultOfContextTheme) =>
      ConstructorCode(
        factory: true,
        type: className,
        name: 'of',
        params: ParamsCode(
          params: [ParamCode(name: 'context', type: 'BuildContext')],
        ),
        body:
            'return Theme.of(context).extension<$className>() ?? $className.$defaultOfContextTheme;'
                .code,
      );

  factory ConstructorCode.constConstructor(String className, List<String> fieldNames) =>
      ConstructorCode(
        const_: true,
        type: className,
        params: ParamsCode(
          namedParams: [
            for (final name in fieldNames)
              ParamCode(
                required_: true,
                this_: true,
                name: name,
              ),
          ],
        ),
      );
}
