# Genuis
This package generate themes for you flutter project based on your asset folder with filed and configs.

# Example
```dart
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final UI ui = context.ui;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ui.colors.background.primary,
        title: Text(
          'Genuis Demo',
          style: ui.fonts.manrope.headline.regular,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //...
        ],
      ),
    );
  }
}
```

## Config

```yaml
assets_path: assets/
output_path: lib/ui/
themes:
  - light
  - dark
base_theme: base
default_theme: false
class_type: theme_extension
from_json_method: false
dart_line_length: 100
class_name: UI
field_name: ui

tokens:
  - <token_name>:
      type: asset
      path: <token_name>.json
      class_name: <token_name>
      class_type: static
      field_name: value

modules:
  - <module_name>:
      type: asset
      path: <module_name>/
      token_class_type: null
      token_class_name: <module_name>Token
      color: false
      color_class_name: null
```



## Types
Package support next types:
* asset
* color


### asset
