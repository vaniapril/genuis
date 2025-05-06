part of 'node.dart';

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
