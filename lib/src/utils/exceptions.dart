class GenuisException implements Exception {}

// Config
class ConfigInvalidStructureException implements GenuisException {
  const ConfigInvalidStructureException();

  @override
  String toString() => 'Config error: Invalid structure of config file';
}

class ConfigValueTypeException implements GenuisException {
  final dynamic value;
  final String valueName;
  final String expectedType;

  const ConfigValueTypeException(
    this.value,
    this.valueName,
    this.expectedType,
  );

  @override
  String toString() =>
      'Config error: wrong type of $valueName, $value (${value.runtimeType}) is not a $expectedType';
}

class ConfigParseValueException implements GenuisException {
  final dynamic value;
  final String valueName;

  ConfigParseValueException(
    this.value,
    this.valueName,
  );

  @override
  String toString() => 'Config error: wrong value of $valueName, $value is not valid';
}

class ConfigValidationException implements GenuisException {
  final String message;

  const ConfigValidationException(this.message);

  @override
  String toString() => 'Config error: validation error, $message';
}

// Parser
class ParserFolderOrFileIsNotExistsException implements GenuisException {
  final String path;

  const ParserFolderOrFileIsNotExistsException(this.path);

  @override
  String toString() => 'Parser error: $path does not exists';
}

class ParserFileException implements GenuisException {
  final String path;
  final String? element;

  const ParserFileException(this.path, {this.element});

  @override
  String toString() =>
      'Parser error: cannot parse file $path ${element != null ? ', $element' : ''}';
}

class ParserMapperException implements GenuisException {
  const ParserMapperException();

  @override
  String toString() => 'Parser error: cannot map values in code entities';
}

class ParserFileElementException {
  final String element;

  const ParserFileElementException(this.element);

  @override
  String toString() => 'Parser error: cannot parse $element';
}

class ParserValueArgsException implements GenuisException {
  final dynamic value;
  final String type;

  const ParserValueArgsException(this.value, this.type);

  @override
  String toString() => 'Parser error: $value cannot be parsed to $type';
}

class ParserTokenNotFoundException implements GenuisException {
  final String value;

  const ParserTokenNotFoundException(this.value);

  @override
  String toString() => 'Parser error: token $value not found';
}

class ParserMultipleThemesException implements GenuisException {
  final dynamic value;

  const ParserMultipleThemesException(this.value);

  @override
  String toString() => 'Parser error: multiple themes in $value';
}
