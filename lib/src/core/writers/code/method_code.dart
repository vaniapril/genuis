import 'package:genuis/src/core/writers/code/code.dart';
import 'package:genuis/src/core/writers/code/param_code.dart';
import 'package:genuis/src/core/writers/code/params_code.dart';

/// ``` dart
/// {override} |Type| {getter} |Name|({|Params|}) {async} {=>} {|Body|}
/// ```
class MethodCode extends Code {
  final bool override_;
  final String? type;
  final String name;
  final bool getter;
  final bool operator;
  final bool async_;
  final ParamsCode params;
  final bool expression;
  final Code? body;

  MethodCode({
    this.override_ = false,
    this.type,
    this.getter = false,
    this.operator = false,
    required this.name,
    this.params = const ParamsCode(),
    this.async_ = false,
    this.body,
    this.expression = false,
  });

  @override
  void encode(StringBuffer buffer) {
    if (override_) buffer.writeln('@override');
    if (type != null) {
      buffer.write(type);
      buffer.write(' ');
    }
    if (getter) buffer.write('get ');
    if (operator) buffer.write('operator ');
    buffer.write(name);
    if (!getter) {
      params.encode(buffer);
    }
    if (async_) buffer.write(' async');
    if (body != null) {
      if (expression) {
        buffer.write(' => ');
        body?.encode(buffer);
        buffer.write(';');
      } else {
        buffer.writeln('{ ');
        body?.encode(buffer);
        buffer.write('}');
      }
    } else {
      buffer.writeln(';');
    }
  }

  factory MethodCode.overrideGetter(String type, String name, String body) => MethodCode(
    name: name,
    type: type,
    override_: true,
    getter: true,
    expression: true,
    body: body.code,
  );

  factory MethodCode.lerpMethod(String className, List<(String, String)> namesValues) => MethodCode(
    override_: true,
    name: 'lerp',
    params: ParamsCode(
      params: [
        ParamCode(name: 'other', type: 'ThemeExtension<$className>?'),
        ParamCode(name: 't', type: 'double'),
      ],
    ),
    type: className,
    body: [
      'if (other is! $className) return this;',
      'if (identical(this, other)) return this;',
      'return $className(',
      for (final nameValue in namesValues) '${nameValue.$1}: ${nameValue.$2},',
      ');',
    ].code,
  );

  factory MethodCode.copyWithMethod(String className, List<(String, String)> typesNames) =>
      MethodCode(
        override_: true,
        name: 'copyWith',
        params: ParamsCode(
          namedParams: [
            for (final typeName in typesNames)
              ParamCode(
                required_: false,
                this_: false,
                type: '${typeName.$1}?',
                name: typeName.$2,
              ),
          ],
        ),
        type: className,
        body: [
          'return $className(',
          for (final typeName in typesNames)
            '${typeName.$2}: ${typeName.$2} ?? this.${typeName.$2},',
          ');',
        ].code,
      );
}
