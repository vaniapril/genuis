import 'dart:convert';
import 'dart:io';

import 'package:x_gens/src/core/data/node.dart';
import 'package:x_gens/src/core/parsers/file/file_parser.dart';
import 'package:x_gens/src/utils/file_extension.dart';
import 'package:x_gens/src/utils/string_extension.dart';

class JsonFileParser extends FileParser<String> {
  Node<String> _parseJson(String name, Map<String, dynamic> json) {
    List<Node<String>> nodes = [];

    for (final key in json.keys) {
      final entity = json[key];
      if (entity is Map<String, dynamic>) {
        nodes.add(_parseJson(key, entity));
        continue;
      }
      if (entity is String || entity is int || entity is double) {
        nodes.add(NodeItem(
          name: key.pathCamelCase.named,
          value: entity.toString(),
        ));
        continue;
      }
      if (entity is List) {
        nodes.addAll(entity.map((e) => NodeItem(
              name: key.pathCamelCase.named,
              value: e.toString(),
            )));
        continue;
      }
      throw 'Wrong jsonElement type: ${entity.name.local}';
    }

    return NodeFolder<String>(
      name: name.pathCamelCase.named,
      nodes: nodes,
    );
  }

  @override
  List<Node<String>> parse(File file) {
    if (!file.isJson) return [];

    try {
      final root = json.decode(file.readAsStringSync());

      return [
        root is List
            ? _parseJson(file.name.pathCamelCase.named, {file.name.pathCamelCase.named: root})
            : _parseJson(file.name.pathCamelCase.named, root),
      ];
    } catch (e) {
      throw '\n' + file.path + ' - ' + e.toString();
    }
  }
}
