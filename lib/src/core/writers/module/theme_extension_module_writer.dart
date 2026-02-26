import 'package:genuis/src/core/models/code/code_entities/code_entity.dart';
import 'package:genuis/src/core/writers/code/class_code.dart';
import 'package:genuis/src/core/writers/code/constructor_code.dart';
import 'package:genuis/src/core/writers/code/field_code.dart';
import 'package:genuis/src/core/writers/code/method_code.dart';

class ThemeExtensionModuleWriter {
  const ThemeExtensionModuleWriter();

  void write(StringBuffer buffer, Class root) {
    _writeClassWithSubclasses(buffer, root);
  }

  void writeMainClass(StringBuffer buffer, Class class_) {
    _writeClass(buffer, class_, isMain: true);
  }

  void _writeClassWithSubclasses(StringBuffer buffer, Class class_) {
    for (final model in class_.classes) {
      _writeClassWithSubclasses(buffer, model);
    }

    _writeClass(buffer, class_);
  }

  void _writeClass(StringBuffer buffer, Class class_, {bool isMain = false}) {
    final className = class_.type;

    ClassCode.themeExtension(
      className,
      [
        // Fields
        for (final f in class_.nodes) FieldCode.final_(f.type, f.name),
        // Constructor
        ConstructorCode.constConstructor(className, [
          for (final f in class_.nodes) f.name,
        ]),
        // lerp method
        MethodCode.lerpMethod(className, [
          for (final f in class_.nodes) (f.name, f.lerpCode(f.name, 'other.${f.name}')),
        ]),
        // copyWith method
        MethodCode.copyWithMethod(className, [
          for (final f in class_.nodes) (f.type, f.name),
        ]),
        // Const Theme Fields
        for (final theme in class_.themes)
          FieldCode.themeConst(className, theme, [
            for (final f in class_.nodes) (f.name, f.value(theme)),
          ]),
        // Factory of context
        if (isMain) ConstructorCode.ofContextFactory(className, class_.themes.first),
      ],
    ).encode(buffer);
  }
}
