import 'package:genuis/src/core/data/value/value.dart';
import 'package:genuis/src/core/data/value/value_type.dart';
import 'package:genuis/src/utils/string_extension.dart';

part 'class.dart';
part 'field.dart';

sealed class CodeEntity {
  final String name;
  final List<String> path;

  String value(String theme) {
    final node = this;
    return switch (node) {
      Field() => node.values[theme]?.code ?? node.values['base']?.code ?? 'null',
      Class() => '${node.type}.${node.themes.contains(theme) ? theme : 'base'}',
    };
  }

  String get type {
    final node = this;
    return switch (node) {
      Field() => node.valueType.typeCode,
      Class() => node.classType,
    };
  }

  String lerpCode(String arg1, String arg2) {
    final node = this;
    return switch (node) {
      Field() => node.lerpCode(arg1, arg2),
      Class() => '$arg1.lerp($arg2, t)',
    };
  }

  const CodeEntity({
    required this.name,
    required this.path,
  });
}
