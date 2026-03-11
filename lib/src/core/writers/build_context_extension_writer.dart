import 'package:genuis/src/config/config.dart';
import 'package:genuis/src/core/models/module.dart';
import 'package:genuis/src/core/writers/code/code.dart';
import 'package:genuis/src/core/writers/code/extension_code.dart';
import 'package:genuis/src/core/writers/code/method_code.dart';
import 'package:genuis/src/utils/string_extension.dart';

class BuildContextExtensionWriter {
  BuildContextExtensionWriter();

  void write(StringBuffer buffer, List<Module> modules) {
    ExtensionCode(
      name: '${Config.it.className}BuildContextExtension',
      on: 'BuildContext',
      body: [
        MethodCode(
          type: Config.it.className,
          name: Config.it.fieldName,
          getter: true,
          expression: true,
          body: '${Config.it.className}.of(this)'.code,
        ),
        for (final module in modules)
          MethodCode(
            type: module.rootClass.classType,
            name: module.config.name.asName,
            getter: true,
            expression: true,
            body: '${Config.it.fieldName}.${module.config.name.asName}'.code,
          ),
      ],
    ).encode(buffer);
  }
}
