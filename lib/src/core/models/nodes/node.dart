part 'folder.dart';
part 'item.dart';

sealed class Node {
  final String name;

  const Node({
    required this.name,
  });
}
