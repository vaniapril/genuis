import 'package:genuis/src/config/config.dart';

abstract class GenuisGenerator {
  final Config config;

  const GenuisGenerator({
    required this.config,
  });

  String get name;

  String generate();
}
