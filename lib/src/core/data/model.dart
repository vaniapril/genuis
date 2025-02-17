sealed class Model<M> {
  final String name;
  final List<String> themes;

  const Model({
    required this.name,
    required this.themes,
  });
}

class ModelItem<M> extends Model<M> {
  final Map<String, M> values;

  const ModelItem({
    required super.name,
    required super.themes,
    required this.values,
  });

  @override
  String toString() => '{name: $name, themes: $themes, values: $values}';
}

class ModelFolder<M> extends Model<M> {
  final List<Model<M>> models; // .sort((e1,e2) => Comparable.compare(e1.name, e2.name)

  const ModelFolder({
    required super.name,
    required super.themes,
    required this.models,
  });

  @override
  String toString() => '{name: $name, themes: $themes, models: $models}';
}
