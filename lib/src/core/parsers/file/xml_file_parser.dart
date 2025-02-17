import 'dart:io';

import 'package:x_gens/src/core/data/node.dart';
import 'package:x_gens/src/core/parsers/file/file_parser.dart';
import 'package:x_gens/src/utils/file_extension.dart';
import 'package:x_gens/src/utils/string_extension.dart';
import 'package:xml/xml.dart';

class XmlFileParser extends FileParser<String> {
  final String attributeName;
  final String folderName;

  XmlFileParser({
    required this.attributeName,
    required this.folderName,
  });

  Node<String> _parseXmlFolder(XmlElement element) {
    List<Node<String>> nodes = [];

    for (final entity in element.childElements) {
      if (entity.name.local == folderName) {
        nodes.add(_parseXmlFolder(entity));
        continue;
      }
      if (entity.name.local == attributeName) {
        nodes.add(NodeItem(
          name: entity.getAttribute('name')?.pathCamelCase.named ??
              element.getAttribute('name')?.pathCamelCase.named ??
              '',
          value: entity.innerText,
        ));
        continue;
      }
      throw 'Wrong xmlElement type: ${entity.name.local}';
    }

    return NodeFolder<String>(
      name: element.getAttribute('name')?.pathCamelCase.named ?? '',
      nodes: nodes,
    );
  }

  @override
  List<Node<String>> parse(File file) {
    if (!file.isXml) return [];

    try {
      final root = XmlDocument.parse(
              '<$folderName name = "${file.name.pathCamelCase.named}">${file.readAsStringSync()}</$folderName>')
          .rootElement;

      return [
        _parseXmlFolder(root),
      ];
    } catch (e) {
      throw '\n' + file.path + ' - ' + e.toString();
    }
  }
}
