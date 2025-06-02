import 'package:genuis/src/config/yaml/genuis_config.dart';

abstract class GenuisGenerator {
  final GenuisConfig config;

  const GenuisGenerator({
    required this.config,
  });

  String get name;

  String generate();
}
