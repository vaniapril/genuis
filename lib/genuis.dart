library genuis;

import 'package:build/build.dart';
import 'package:genuis/src/config/config.dart';
import 'package:genuis/src/config/parser/config_parser.dart';
import 'package:genuis/src/core/genuis_core.dart';
import 'package:genuis/src/empty_builder.dart';
import 'package:genuis/src/genuis_builder.dart';

Builder build(BuilderOptions options) {
  final config = ConfigParser.getConfig();

  if (config == null) {
    return EmptyBuilder();
  }

  Config.init(config);

  final core = GenuisCore();
  return GenuisBuilder(
    generators: core.generators,
  );
}
