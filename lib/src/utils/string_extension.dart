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

  String get expandBitInt {
    String source = replaceFirst('0x', '');
    if (source.length == 6) source = 'FF$source';
    return '0x$source';
  }
}

const _dartKeywords = [
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
  'class',
  'finally',
  'for',
  'if',
  'in',
  'is',
  'new',
  'null',
  'rethrow',
  'return',
  'super',
  'switch',
  'this',
  'throw',
  'true',
  'try',
  'var',
  'void',
  'with',
  'while',
  'yield',

  // This keyword can be used as an identifier without restriction:
  // 'async',
  // 'base',
  // 'hide',
  // 'of',
  // 'on',
  // 'sealed',
  // 'show',
  // 'sync',
  // 'when',

  // This keyword can't be used as the name of a type
  // (a class, a mixin, an enum, an extension type, or a type alias), the name of an extension,
  // or as an import prefix. It can be used as an identifier in all other circumstances:
  // 'abstract',
  // 'as',
  // 'covariant',
  // 'deferred',
  // 'dynamic',
  // 'export',
  // 'extension',
  // 'external',
  // 'factory',
  // 'function',
  // 'get',
  // 'implements',
  // 'import',
  // 'interface',
  // 'late',
  // 'library',
  // 'mixin',
  // 'operator',
  // 'part',
  // 'required',
  // 'set',
  // 'static',
  // 'type',
  // 'typedef',
];
