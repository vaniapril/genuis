import 'package:x_gens/src/utils/list_extension.dart';

sealed class Node<N> {
  final String name;
  const Node({
    required this.name,
  });
}

class NodeItem<N> extends Node<N> {
  final N value;

  const NodeItem({
    required super.name,
    required this.value,
  });

  @override
  String toString() => '{name: $name, value: $value}';
}

class NodeFolder<N> extends Node<N> {
  final List<Node<N>> nodes;

  const NodeFolder({
    required super.name,
    required this.nodes,
  });

  void addWithMerge(List<Node<N>> newNodes) {
    for (final newNode in newNodes) {
      final sameNode = folders.where((e) => e.name == newNode.name).firstOrNull;
      if (sameNode == null) {
        nodes.add(newNode);
      } else if (newNode is NodeFolder<N>) {
        sameNode.addWithMerge(newNode.nodes);
      }
    }
  }

  List<NodeFolder<N>> get folders => nodes.whereType<NodeFolder<N>>().toList();
  List<NodeItem<N>> get items => nodes.whereType<NodeItem<N>>().toList();
  bool isTheme(List<String> themes) =>
      // TODO(IvanPrylepski): isEpty??? only themes ???
      folders.map((e) => e.name).toList().containsAll(themes); //&& items.isEmpty;

  bool isNodeTheme(List<String> themes) =>
      // TODO(IvanPrylepski): isEpty??? only themes ???
      nodes.map((e) => e.name).toList().containsAll(themes); //&& items.isEmpty;

  bool isEqual(NodeFolder<N> other) {
    final folderNames = folders.map((e) => e.name).toList();
    final itemNames = items.map((e) => e.name).toList();

    final otherFolderNames = other.folders.map((e) => e.name).toList();
    final otherItemNames = other.items.map((e) => e.name).toList();

    return folderNames.isEqualIgnoreOrder(otherFolderNames) &&
        itemNames.isEqualIgnoreOrder(otherItemNames);
  }

  String notEqual(NodeFolder<N> other) {
    final folderNames = folders.map((e) => e.name).toList().toSet();
    final itemNames = items.map((e) => e.name).toList().toSet();

    final otherFolderNames = other.folders.map((e) => e.name).toList().toSet();
    final otherItemNames = other.items.map((e) => e.name).toList().toSet();

    final diff = folderNames.difference(otherFolderNames)
      ..addAll(itemNames.difference(otherItemNames));

    return diff.toString();
  }

  NodeFolder<T> map<T>(NodeItem<T> Function(NodeItem<N>) mapper) {
    final newNodes = nodes.map((e) {
      switch (e) {
        case NodeFolder<N>():
          return e.map(mapper);
        case NodeItem<N>():
          return mapper(e);
      }
    }).toList();

    return NodeFolder<T>(name: name, nodes: newNodes);
  }

  @override
  String toString() => '{name: $name, nodes: $nodes}';
}
