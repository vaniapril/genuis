import 'package:genuis/src/core/data/code/flag.dart';
import 'package:genuis/src/core/data/code/value.dart';
import 'package:genuis/src/utils/string_extension.dart';

part 'class.dart';
part 'field.dart';

sealed class CodeEntity {
  final String name;
  final List<String> path;

  String value(String theme, String baseTheme) {
    final node = this;
    return switch (node) {
      Field() => node.values[theme]?.toString() ?? node.values['']?.toString() ?? 'null',
      Class() => '${node.type}.${node.themes.contains(theme) && theme.isNotEmpty ? theme : baseTheme}',
    };
  }

  String get type {
    final node = this;
    return switch (node) {
      Field() => node.valueType,
      Class() => node.classType,
    };
  }

  String lerpCode(String arg1, String arg2) {
    final node = this;
    return switch (node) {
      Field() => node.values.values.first.lerpCode(arg1, arg2),
      Class() => '$arg1.lerp($arg2, t)',
    };
  }

  const CodeEntity({
    required this.name,
    required this.path,
  });
}
