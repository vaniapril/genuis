import 'dart:io';
import 'package:genuis/src/core/models/nodes/node.dart';
import 'package:genuis/src/core/parsers/file_parsers/file_parser.dart';
import 'package:genuis/src/utils/exceptions.dart';
import 'package:genuis/src/utils/file_system_entity_extension.dart';
import 'package:xml/xml.dart';

class XmlFileParser extends FileParser {
  @override
  bool canParse(File file) => file.isXml;

  @override
  Node parse(File file) {
    if (!file.isXml) return Folder.empty;

    try {
      final document = XmlDocument.parse(file.readAsStringSync());

      return _parseElement(document.rootElement);
    } catch (e) {
      if (e is ParserFileElementException) throw ParserFileException(file.path, element: e.element);
      throw ParserFileException(file.path);
    }
  }

  Folder _parseElement(XmlElement element) {
    final name = element.getAttribute('name'); // ?? element.name.local;
    final children = element.childElements;

    if (children.isNotEmpty) {
      return Folder(
        name: name ?? '',
        nodes: children.map((e) => _parseElement(e)).toList(),
      );
    }

    final type = element.getAttribute('type')?.split(',').join(' ');
    final value =
        element.innerText.isEmpty ? '' : '${element.innerText}${type != null ? ' $type' : ''}';

    if (value.isNotEmpty) {
      return Folder(
        name: name ?? '',
        nodes: [
          Item(value: value.toString()),
        ],
      );
    }

    throw ParserFileElementException('{$value}');
  }
}
