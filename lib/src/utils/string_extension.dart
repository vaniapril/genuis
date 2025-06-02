extension StringExtension on String {
  String get nullable => endsWith('?') ? this : '$this?';

  String get upperFirst => isEmpty ? '' : '${this[0].toUpperCase()}${substring(1)}';

  String get lowerFirst => isEmpty ? '' : '${this[0].toLowerCase()}${substring(1)}';

  String get withoutExtension => split('.').first;

  String get forwardSlash => replaceAll('\\', '/');

  String get camelCase => toLowerCase()
      .replaceAll(RegExp('[^A-Za-z0-9]'), ' ')
      .split(' ')
      .where((e) => e.isNotEmpty)
      .map((e) => e.upperFirst)
      .join()
      .lowerFirst;

  String get snakeCase => toLowerCase()
      .replaceAll(RegExp('[^A-Za-z0-9]'), ' ')
      .split(' ')
      .map((e) => e.toLowerCase())
      .where((e) => e.isNotEmpty)
      .join('_');

  String get named => keywords.contains(this) ? '${this}_' : this;

  String get hexToBitInt {
    String source = replaceFirst('#', '');
    if (source.length == 6) source = '${source}FF';
    source = source.substring(6) + source.substring(0, 6);
    return '0x$source';
  }
}

const keywords = [
  'assert',
  'await',
  'break',
  'case',
  'catch',
  'class',
  'const',
  'continue',
  'default',
  'do',
  'else',
  'enum',
  'extends',
  'false',
  'final',
  'var',
  'final',
  'finally',
  'for',
  'if',
  'in',
  'is',
  'new',
  'null',
  'rethrow',
  'return',
  'switch',
  'throw',
  'true',
  'try',
  'var',
  'void',
  'with',
  'while',
  'yield',
];
