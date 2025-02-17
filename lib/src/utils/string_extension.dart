extension StringExtension on String {
  String get nullable => endsWith('?') ? this : '$this?';

  String get upperFirst => isEmpty ? '' : '${this[0].toUpperCase()}${substring(1)}';

  String get lowerFirst => isEmpty ? '' : '${this[0].toLowerCase()}${substring(1)}';

  String get withoutExtension => split('.').first;

  String get forwardSlash => replaceAll('\\', '/');

  String get backSlash => replaceAll('/', '\\');

  String get pathCamelCase => replaceAll('_', '/')
      .replaceAll(' ', '/')
      .replaceAll('%', '/')
      .replaceAll('-', '/')
      .split('/')
      .map((e) => e.upperFirst)
      .join()
      .lowerFirst;

  String get named => this == 'default' ? '${this}_' : this;

  String get hexToBitInt {
    String source = replaceFirst('#', '');
    if (source.length == 6) source = '${source}FF';
    source = source.substring(6) + source.substring(0, 6);
    return '0x$source';
  }
}
