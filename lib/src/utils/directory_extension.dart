import 'dart:io';

extension DirectoryExtension on Directory {
  String get name => path.replaceAll('\\', '/').split('/').lastWhere((e) => e.isNotEmpty);
}
