import 'dart:io';
import 'package:genuis/src/core/data/node/node.dart';
import 'package:genuis/src/core/parsers/file/file_parser.dart';
import 'package:genuis/src/utils/exceptions.dart';
import 'package:genuis/src/utils/file_system_entity_extension.dart';
import 'package:genuis/src/utils/num_extension.dart';
import 'package:genuis/src/utils/string_extension.dart';
import 'package:xml/xml.dart';

class XmlFileParser extends FileParser {
  @override
  bool canParse(File file) => file.isXml;

  @override
  List<Node> parse(File file, String name) {
    if (!file.isXml) return [];

    try {
      final document = XmlDocument.parse(file.readAsStringSync());

      final root = document.childElements;

      return [
        Folder(
          name: name,
          nodes: root.length == 1 ? _parseXml(root.first) : _parseXml(document.rootElement),
        ),
      ];
    } catch (e) {
      if (e is ParserFileElementException) throw ParserFileException(file.path, element: e.element);
      throw ParserFileException(file.path);
    }
  }

  List<Node> _parseXml(XmlElement xml) {
    List<Node> nodes = [];

    for (final element in xml.childElements) {
      final name = element.getAttribute('name'); // ?? element.name.local;
      final type = element.getAttribute('type')?.split(',').join(' ');
      final children = element.childElements;
      final value =
          element.innerText.isEmpty ? '' : '${element.innerText}${type != null ? ' $type' : ''}';

      if (name != null && children.isNotEmpty && value.isEmpty) {
        nodes.add(Folder(
          name: name.camelCase.named,
          nodes: _parseXml(element),
        ));
        continue;
      }
      if (name == null && children.isEmpty && value.isNotEmpty) {
        var name = xml.getAttribute('name') ?? '';
        final doubleValue = double.tryParse(value);
        if (doubleValue != null) {
          if (doubleValue.isInt) {
            name += doubleValue.toStringAsFixed(0);
          } else {
            name += doubleValue.toString().snakeCase.named;
          }
        } else {
          name += value.toString().camelCase.named;
        }

        nodes.add(
          Item(
            name: name,
            value: value,
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

      throw ParserFileElementException(element.toString());
    }

    return nodes;
  }
}
