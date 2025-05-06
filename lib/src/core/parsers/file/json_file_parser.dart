import 'dart:convert';
import 'dart:io';

import 'package:genuis/src/core/data/node/node.dart';
import 'package:genuis/src/core/parsers/file/file_parser.dart';
import 'package:genuis/src/utils/file_extension.dart';
import 'package:genuis/src/utils/string_extension.dart';

class JsonFileParser extends FileParser<String> {
  List<Node> _parseJson(Map<String, dynamic> json) {
    List<Node> nodes = [];

    for (final key in json.keys) {
      final entity = json[key];
      if (entity is Map<String, dynamic>) {
        nodes.add(Folder(
          name: key.pathCamelCase.named,
          nodes: _parseJson(entity),
        ));
        continue;
      }
      if (entity is List) {
        // TODO(IvanPrylepski):
        nodes.addAll(
          entity.map(
            (e) => Item(
              name: e.toString(),
              value: e.toString(),
            ),
          ),
        );
        continue;
      }
      if (entity is String || entity is int || entity is double) {
        nodes.add(Item(
          name: key.pathCamelCase.named,
          value: entity.toString(),
        ));
        continue;
      }

      throw 'Wrong jsonElement type: ${entity.name.local}';
    }

    return nodes;
  }

  @override
  List<Node> parse(File file) {
    if (!file.isJson) return [];

    try {
      final root = json.decode(file.readAsStringSync());

      return root is List ? _parseJson({file.name.pathCamelCase.named: root}) : _parseJson(root);
    } catch (e) {
      throw '\n${file.path} - $e';
    }
  }
}
