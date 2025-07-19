import 'dart:convert';
import 'dart:io';

import 'package:genuis/src/core/models/nodes/node.dart';
import 'package:genuis/src/core/parsers/file_parsers/file_parser.dart';
import 'package:genuis/src/utils/exceptions.dart';
import 'package:genuis/src/utils/file_system_entity_extension.dart';
import 'package:genuis/src/utils/num_extension.dart';
import 'package:genuis/src/utils/string_extension.dart';

class JsonFileParser extends FileParser {
  @override
  bool canParse(File file) => file.isJson;

  @override
  List<Node> parse(File file, String name) {
    if (!file.isJson) return [];

    try {
      final root = json.decode(file.readAsStringSync());

      return _parseJson({name: root});
    } catch (e) {
      if (e is ParserFileElementException) throw ParserFileException(file.path, element: e.element);
      throw ParserFileException(file.path);
    }
  }

  List<Node> _parseJson(Map<String, dynamic> json) {
    List<Node> nodes = [];

    for (final key in json.keys) {
      final entity = json[key];
      if (entity is Map<String, dynamic>) {
        nodes.add(Folder(
          name: key.camelCase.named,
          nodes: _parseJson(entity),
        ));
        continue;
      }
      if (entity is List) {
        nodes.addAll(
          entity.map(
            (e) {
              var name = key;
              if (e is double) {
                if (e.isInt) {
                  name += e.toStringAsFixed(0);
                } else {
                  name += e.toString().snakeCase.named;
                }
              } else {
                name += e.toString().camelCase.named;
              }

              return Item(
                name: name,
                value: e.toString(),
              );
            },
          ),
        );
        continue;
      }
      if (entity is String || entity is int || entity is double) {
        nodes.add(Item(
          name: key.camelCase.named,
          value: entity.toString(),
        ));
        continue;
      }

      throw ParserFileElementException('{$key: $entity}');
    }

    return nodes;
  }
}
