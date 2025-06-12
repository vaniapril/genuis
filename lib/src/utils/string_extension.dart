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
  'abstract',
  'as',
  'assert',
  'async',
  'await',
  'base',
  'break',
  'case',
  'catch',
  'class',
  'const',
  'continue',
  'covariant',
  'default',
  'deferred',
  'do',
  'dynamic',
  'else',
  'enum',
  'export',
  'extends',
  'extension',
  'external',
  'factory',
  'false',
  'final',
  'var',
  'final',
  'class',
  'finally',
  'for',
  'function',
  'get',
  'hide',
  'if',
  'implements',
  'import',
  'in',
  'interface',
  'is',
  'late',
  'library',
  'mixin',
  'new',
  'null',
  'of',
  'on',
  'operator',
  'part',
  'required',
  'rethrow',
  'return',
  'sealed',
  'set',
  'show',
  'static',
  'super',
  'switch',
  'sync',
  'this',
  'throw',
  'true',
  'try',
  'type',
  'typedef',
  'var',
  'void',
  'when',
  'with',
  'while',
  'yield',
];
