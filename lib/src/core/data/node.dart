import 'package:genuis/src/core/data/value.dart';

sealed class Node {
  final String name;
  final List<String> path;

  const Node({
    required this.name,
    required this.path,
  });
}

class Item extends Node {
  final Map<String, Value> values;

  Item({
    required super.name,
    required super.path,
    Map<String, Value>? values,
  }) : values = values ?? {};

  @override
  String toString() => '{name: $name, path: $path, value: $values}';
}

class Folder extends Node {
  List<Folder> folders;
  List<Item> items;
  List<String> themes;

  Folder({
    required super.name,
    required super.path,
    List<Folder>? folders,
    List<Item>? items,
    List<String>? themes,
  })  : folders = folders ?? [],
        items = items ?? [],
        themes = themes ?? [];

  List<Node> get nodes => [...folders, ...items];

  @override
  String toString() => '{name: $name, path: $path, folders: $folders, items: $items}';
}
