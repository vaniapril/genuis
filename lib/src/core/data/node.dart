import 'package:genuis/src/utils/list_extension.dart';

sealed class Node<N> {
  final String name;
  final List<String> path;

  const Node({
    required this.name,
    required this.path,
  });
}

class Item<N> extends Node<N> {
  final Map<String, N> values;

  const Item({
    required super.name,
    required this.values,
    required super.path,
  });

  @override
  String toString() => '{name: $name, value: $values}';
}

class Folder<N> extends Node<N> {
  final List<Folder<N>> _folders;
  final List<Item<N>> _items;
  final List<String> _themes;

  List<Folder<N>> get folders => _folders;
  List<Item<N>> get items => _items;
  List<String> get themes => _themes;
  List<Node<N>> get nodes => [..._folders, ..._items];

  const Folder({
    required super.name,
    required super.path,
    required List<Folder<N>> folders,
    required List<Item<N>> items,
    required List<String> themes,
  })  : _folders = folders,
        _items = items,
        _themes = themes;

  bool isEqual(Folder<N> other) {
    final folderNames = folders.map((e) => e.name).toList();
    final itemNames = items.map((e) => e.name).toList();

    final otherFolderNames = other.folders.map((e) => e.name).toList();
    final otherItemNames = other.items.map((e) => e.name).toList();

    return folderNames.isEqualIgnoreOrder(otherFolderNames) &&
        itemNames.isEqualIgnoreOrder(otherItemNames);
  }

  @override
  String toString() => '{name: $name, folders: $folders, items: $items}';
}
