import 'package:genuis/src/config/config.dart';

abstract class FileGenerator {
  final Config config;

  const FileGenerator({
    required this.config,
  });

  String get fileName;
  String generate();
}
