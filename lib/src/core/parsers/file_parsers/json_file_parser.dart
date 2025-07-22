import 'dart:convert';
import 'dart:io';

import 'package:genuis/src/core/models/nodes/node.dart';
import 'package:genuis/src/core/parsers/file_parsers/file_parser.dart';
import 'package:genuis/src/utils/exceptions.dart';
import 'package:genuis/src/utils/file_system_entity_extension.dart';

typedef _JsonMap = Map<String, dynamic>;
typedef _JsonList = List<dynamic>;

class JsonFileParser extends FileParser {
  @override
  bool canParse(File file) => file.isJson;

  @override
  Node parse(File file) {
    if (!file.isJson) return Folder.empty;

    try {
      final content = json.decode(file.readAsStringSync());

      return _parseEntry(content);
    } catch (e) {
      if (e is ParserFileElementException) throw ParserFileException(file.path, element: e.element);
      throw ParserFileException(file.path);
    }
  }

  Node _parseEntry(dynamic value) {
    if (value is _JsonMap) {
      return Folder(
        name: '',
        nodes: _parseJson(value),
      );
    }

    if (value is _JsonList) {
      return Folder(
        name: '',
        nodes: value.map((e) => _parseEntry(e)).toList(),
      );
    }

    if (value is String || value is int || value is double || value is bool) {
      return Item(
        value: value.toString(),
      );
    }

    throw ParserFileElementException('{$value}');
  }

  List<Node> _parseJson(_JsonMap json) {
    List<Node> nodes = [];

    for (final key in json.keys) {
      final entity = json[key];
      if (entity is _JsonMap) {
        nodes.add(
          Folder(
            name: key,
            nodes: _parseJson(entity),
          ),
        );
      } else {
        nodes.add(
          Folder(
            name: key,
            nodes: [_parseEntry(entity)],
          ),
        );
      }
    }

    return nodes;
  }
}
