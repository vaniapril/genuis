sealed class Node {
  final String name;

  const Node({
    required this.name,
  });
}

class Item extends Node {
  final String value;

  Item({
    required super.name,
    required this.value,
  });
}

class Folder extends Node {
  final List<Folder> folders;
  final List<Item> items;

  List<Node> get nodes => [...folders, ...items];

  Folder({
    required super.name,
    List<Node>? nodes,
  })  : folders = nodes?.whereType<Folder>().toList() ?? [],
        items = nodes?.whereType<Item>().toList() ?? [];
}
