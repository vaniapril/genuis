import 'package:genuis/src/config/configs/genuis_config.dart';
import 'package:genuis/src/utils/exceptions.dart';

abstract class Config {
  static GenuisConfig? _config;

  static void init(GenuisConfig config) {
    _config = config;
  }

  static GenuisConfig get it {
    return _config ?? (throw const ConfigNotInitializedException());
  }
}
