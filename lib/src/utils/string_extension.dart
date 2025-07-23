extension StringExtension on String {
  String get upperFirst => isEmpty ? '' : '${this[0].toUpperCase()}${substring(1)}';
  String get lowerFirst => isEmpty ? '' : '${this[0].toLowerCase()}${substring(1)}';

  String replaceLast(Pattern from, String to) {
    final lastMatch = from.allMatches(this).lastOrNull;
    if (lastMatch == null) return this;

    return replaceRange(lastMatch.start, lastMatch.end, to);
  }

  // Files and directories
  String get withoutExtension => contains('.') ? substring(0, lastIndexOf('.')) : this;
  String get withoutFile => contains('/') ? substring(0, lastIndexOf('/')) : this;

  String get forwardSlash => replaceAll(r'\', '/');

  String get asFolderPath {
    var result = forwardSlash;
    if (result.startsWith('/')) result = result.substring(1);
    if (!result.endsWith('/')) result = '$result/';
    return result;
  }

  String get asFilePath {
    var result = forwardSlash;
    if (result.startsWith('/')) result = result.substring(1);
    return result;
  }

  // Naming
  String get camelCase => replaceAll(
    RegExp('[^A-Za-z0-9]'),
    ' ',
  ).split(' ').where((e) => e.isNotEmpty).map((e) => e.upperFirst).join().lowerFirst;

  String get snakeCase => replaceAll(
    RegExp('[^A-Za-z0-9]'),
    ' ',
  ).split(' ').map((e) => e.toLowerCase()).where((e) => e.isNotEmpty).join('_');

  String get exceptKeywords => _dartKeywords.contains(this) ? '${this}_' : this;

  String get asName => camelCase.exceptKeywords;

  // Converters
  String get hexToBitInt {
    String source = replaceFirst('#', '');
    if (source.length == 6) source = '${source}FF';
    source = source.substring(6) + source.substring(0, 6);
    return '0x$source';
  }
}

const _dartKeywords = [
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
