import 'package:genuis/src/config/genuis_config.dart';

abstract class FileGenerator {
  final GenuisConfig config;

  const FileGenerator({
    required this.config,
  });

  String get fileName;
  String generate();
}
