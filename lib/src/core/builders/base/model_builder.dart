import 'package:genuis/src/core/data/field.dart';
import 'package:genuis/src/core/data/node.dart';
import 'package:genuis/src/utils/string_extension.dart';

extension NodeExtension<T extends Field> on Node<T> {
  String get type {
    final node = this;
    return switch (node) {
      Item<T>() => node.values.values.first.type,
      Folder<T>() => '${path.map((e) => e.upperFirst).join()}${node.name.upperFirst}',
    };
  }

  String value(String theme) {
    final node = this;
    return switch (node) {
      Item<T>() => node.values[theme]?.code ?? node.values['base']?.code ?? 'null',
      Folder<T>() => '${node.type}.${node.themes.contains(theme) ? theme : 'base'}',
    };
  }
}

class ModelBuilder<T extends Field> {
  final String typePrefix;
  final String typePostfix;
  final String baseTheme;

  const ModelBuilder({
    required this.typePrefix,
    required this.typePostfix,
    required this.baseTheme,
  });
}
