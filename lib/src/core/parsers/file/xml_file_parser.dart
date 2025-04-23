import 'dart:io';

import 'package:genuis/src/core/data/sequence.dart';
import 'package:genuis/src/core/parsers/file/file_parser.dart';
import 'package:genuis/src/utils/file_extension.dart';
import 'package:genuis/src/utils/string_extension.dart';
import 'package:xml/xml.dart';

class XmlFileParser extends FileParser<String> {
  final String attributeName;
  final String folderName;

  XmlFileParser({
    required this.attributeName,
    required this.folderName,
  });

  List<Sequence> _parseXmlFolder(List<String> path, XmlElement element) {
    List<Sequence> sequences = [];
    final name = element.getAttribute('name')?.pathCamelCase.named ?? '';

    for (final entity in element.childElements) {
      if (entity.name.local == folderName) {
        sequences.addAll(_parseXmlFolder([...path, name], entity));
        continue;
      }
      if (entity.name.local == attributeName) {
        sequences.add(Sequence(
          sequence: [
            ...path,
            entity.getAttribute('name')?.pathCamelCase.named ??
                element.getAttribute('name')?.pathCamelCase.named ??
                ''
          ],
          value: entity.innerText,
        ));
        continue;
      }
      throw 'Wrong xmlElement type: ${entity.name.local}';
    }

    return sequences;
  }

  @override
  List<Sequence> parse(List<String> path, File file) {
    if (!file.isXml) return [];

    try {
      final root = XmlDocument.parse(
              '<$folderName name = "${file.name.pathCamelCase.named}">${file.readAsStringSync()}</$folderName>')
          .rootElement;

      return _parseXmlFolder(path, root);
    } catch (e) {
      throw '\n${file.path} - $e';
    }
  }
}
