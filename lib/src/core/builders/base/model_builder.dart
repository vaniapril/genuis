import 'package:x_gens/src/core/data/model.dart';
import 'package:x_gens/src/core/data/field.dart';
import 'package:x_gens/src/utils/string_extension.dart';

class ModelBuilder<T extends Field> {
  final String typePrefix;
  final String typePostfix;
  final String baseTheme;

  const ModelBuilder({
    required this.typePrefix,
    required this.typePostfix,
    required this.baseTheme,
  });

  String type(Model<T> model, List<String> path) {
    switch (model) {
      case ModelFolder<T>():
        return '$typePrefix${path.map((e) => e.upperFirst).join()}${model.name.upperFirst}$typePostfix';
      case ModelItem<T>():
        return model.values.values.first.type;
    }
  }

  String value(Model<T> model, String theme, List<String> path) {
    switch (model) {
      case ModelFolder<T>():
        return '${type(model, path)}.${model.themes.contains(theme) ? theme : baseTheme}';
      case ModelItem<T>():
        return model.values[theme]?.code ?? model.values[baseTheme]?.code ?? 'null';
    }
  }
}
