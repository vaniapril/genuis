import 'dart:io';
import 'package:genuis/src/core/data/node/node.dart';
import 'package:genuis/src/core/parsers/file/file_parser.dart';
import 'package:genuis/src/utils/file_system_entity_extension.dart';
import 'package:genuis/src/utils/string_extension.dart';
import 'package:xml/xml.dart';

class XmlFileParser extends FileParser {
  @override
  bool canParse(File file) => file.isXml;

  @override
  List<Node> parse(File file) {
    if (!file.isXml) return [];

    try {
      final document = XmlDocument.parse(file.readAsStringSync());

      final root = document.childElements;

      return root.length == 1 ? _parseXml(root.first) : _parseXml(document.rootElement);
    } catch (e) {
      throw '\n${file.path} - $e';
    }
  }

  List<Node> _parseXml(XmlElement xml) {
    List<Node> nodes = [];

    for (final element in xml.childElements) {
      final name = element.getAttribute('name'); // ?? element.name.local;
      final children = element.childElements;
      final value =
          element.innerText.isEmpty ? '' : '${element.innerText} ${(element.getAttribute('type') ?? '').split(',').join(' ')}';

      if (name != null && children.isNotEmpty && value.isEmpty) {
        nodes.add(Folder(
          name: name.camelCase.named,
          nodes: _parseXml(element),
        ));
        continue;
      }
      if (name == null && children.isEmpty && value.isNotEmpty) {
        nodes.add(
          Item(
            name: (xml.getAttribute('name') ?? '') + value.toString(),
            value: value.toString(),
          ),
        );
        continue;
      }
      if (name != null && children.isEmpty && value.isNotEmpty) {
        nodes.add(Item(
          name: name,
          value: value,
        ));
        continue;
      }

      throw 'Wrong XmlElement format: $element';
    }

    return nodes;
  }
}
