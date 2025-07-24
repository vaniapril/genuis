import 'package:genuis/src/config/config.dart';
import 'package:genuis/src/core/models/code/flag.dart';
import 'package:genuis/src/core/models/code/value.dart';
import 'package:genuis/src/utils/list_extension.dart';
import 'package:genuis/src/utils/string_extension.dart';

part 'class.dart';
part 'field.dart';

sealed class CodeEntity {
  final String name;
  final List<String> path;

  String value(String theme) {
    final node = this;
    return switch (node) {
      Field() =>
        node.values[theme]?.toString() ??
            node.values[Config.it.baseTheme.asName]?.toString() ??
            'null',
      Class() => '${node.type}.${node.themes.contains(theme) ? theme : Config.it.baseTheme.asName}',
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
