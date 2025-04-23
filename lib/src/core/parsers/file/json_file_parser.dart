import 'dart:convert';
import 'dart:io';

import 'package:genuis/src/core/data/sequence.dart';
import 'package:genuis/src/core/parsers/file/file_parser.dart';
import 'package:genuis/src/utils/file_extension.dart';
import 'package:genuis/src/utils/string_extension.dart';

class JsonFileParser extends FileParser<String> {
  List<Sequence> _parseJson(List<String> path, Map<String, dynamic> json) {
    List<Sequence> sequences = [];

    for (final key in json.keys) {
      final entity = json[key];
      if (entity is Map<String, dynamic>) {
        sequences.addAll(_parseJson([...path, key.pathCamelCase.named], entity));
        continue;
      }
      if (entity is List) {
        // TODO(IvanPrylepski):
        sequences.addAll(
          entity.map(
            (e) => Sequence(
              sequence: [...path, key.pathCamelCase.named],
              value: e.toString(),
            ),
          ),
        );
        continue;
      }
      if (entity is String || entity is int || entity is double) {
        sequences.add(Sequence(
          sequence: [...path, key.pathCamelCase.named],
          value: entity.toString(),
        ));
        continue;
      }

      throw 'Wrong jsonElement type: ${entity.name.local}';
    }

    return sequences;
  }

  @override
  List<Sequence> parse(List<String> path, File file) {
    if (!file.isJson) return [];

    try {
      final root = json.decode(file.readAsStringSync());

      return root is List
          ? _parseJson(path, {file.name.pathCamelCase.named: root})
          : _parseJson([...path, file.name.pathCamelCase.named], root);
    } catch (e) {
      throw '\n${file.path} - $e';
    }
  }
}
