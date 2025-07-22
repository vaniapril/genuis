sealed class Node {
  const Node();
}

class Folder extends Node {
  static const empty = Folder(name: '', nodes: []);

  final String name;
  final List<Node> nodes;

  List<Folder> get folders => nodes.whereType<Folder>().toList();
  List<Item> get items => nodes.whereType<Item>().toList();

  const Folder({
    required this.name,
    required this.nodes,
  });

  @override
  String toString() {
    return '{name: $name${items.isNotEmpty ? ', items: $items' : ''}${folders.isNotEmpty ? ', folders: $folders' : ''}}';
  }
}

class Item extends Node {
  final String value;
  final String? theme;

  Item({
    required this.value,
    this.theme,
  });

  @override
  String toString() {
    return value;
  }
}
