[GenUIs] - is a code generator for theme classes, enabling convenient creation and use of UI elements based on the structure of the assets folder and JSON configuration files.

# Motivation
Setting UI elements directly in a widget is bad practice, as it inevitably leads to project clutter, constant code duplication, and prevents the implementation of even basic light and dark themes for the application.

```dart
@override
Widget build(BuildContext context) {
  return Row(
    children: [
      CustomIcon(
        path: 'assets/icons/outline/example.svg',
        color: Color(0xFF1234),
      ),
      Text(
        'Hello World!',
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 20,
          height: 1.2,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
    ],
  );
}
```
A common solution to this issue is creating custom theme classes. However, these classes need to be created and maintained, which can be a challenging task in large projects:

```dart
class CustomIcons{
  //...
}

class CustomColors{
  //...
}

class CustomFonts{
  //...
}

@override
Widget build(BuildContext context) {
  return Row(
    children: [
      CustomIcon(
        path: CustomIcons.of(context).outlineExample,
        color: CustomColors.of(context).iconsWhite,
      ),
      Text(
        'Hello World!',
        style: CustomFonts.of(context).robotoHeadline.copyWith(
              color: CustomColors.of(context).textPrimary,
            ),
      ),
    ],
  );
}
```
[GenUIs] generate theme classes for you. You need just to update assets folder with JSON configuration files for the required UI elements. Access to these elements is provided through a convenient chain of getter calls from main theme class. Using [GenUIs] makes it easier to maintain and expand themes, declutters the code and makes it more readable:
```dart
@override
Widget build(BuildContext context) {
  final UI ui = context.ui;
  
  return Row(
    children: [
      CustomIcon(
        icon: ui.icons.outline.example.white,
      ),
      Text(
        'Hello World!',
        style: ui.fonts.roboto.headline.primary,
      ),
    ],
  );
}
```

# Example
Example of using UI elements with [GenUIs]:
```dart
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final UI ui = context.ui;

    return Column(
      children: [
        // Color
        ColoredBox(
          color: ui.colors.primary.red,
        ),
        // Icon
        CustomIcon(
          icon: ui.icons.outline.example.white,
          size: Sizes.iconMedium,
        ),
        // TextStyle
        Text(
          Strings.tag,
          style: ui.fonts.roboto.headline.primary,
        ),
        // Shadow
        DecoratedBox(
          decoration: BoxDecoration(
            boxShadow: [
              ui.shadows.card,
            ],
          ),
        ),
        // Gradient
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: ui.gradients.background,
          ),
        ),
        // Blur
        BackdropFilter(
          filter: ui.blurs.blur4,
        ),
      ],
    );
  }
}
```

# How to use
## Install
### 1. Add dependencies

To use [GenUIs], install [build_runner] and [genuis] by adding them to your `pubspec.yaml` file:

```console
flutter pub add \
  dev:build_runner \
  dev:genuis
```

### 2. Update assets folder

[GenUIs] works with [Modules](#modules) and [Tokens](#tokens). Add folder for each module and JSON-file for each token. \
Asset folder structure for [Example](#example):

```
assets
├── colors
│   ├── primary.json
│   └── secondary.json
├── icons
│   └── outline
│       └── example.svg
├── fonts
│   └── roboto
│       ├── Roboto-Bold.ttf
│       └── roboto.json
├── shadows
│   └── shadows.json
├── gradients
│   └── gradients.json
├── blurs
│   └── blurs.json
├── strings.json
└── sizes.json
```

### 3. Setup config
Define the configuration in `genuis.yaml` file with a lists of [Modules](#modules) and [Tokens](#tokens) with types of UI-elements within them. For more detailed customization of generated themes see [Configuration](#configuration).\
Configuration file for [Example](#example):

```yaml
tokens:
  - sizes:
      type: number
  - strings:
      type: string

modules:
  - colors:
      type: color
  - icons:
      color: true
  - fonts:
      type: font
      color: true
  - shadows:
      type: shadow
  - gradients:
      type: gradient
  - blurs:
      type: blur
```

### 4. Run generator

To generate `.ui.dart` files run the following command in the package directory: 
```console
dart run build_runner build
```

### 5. Use themes

Add `ThemeData` with generated theme extension (`UI` class) to `MaterialApp` and use themes in any widget in your application:

```dart
import 'ui/ui.ui.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        extensions: <UI>[UI.light],
      ),
      darkTheme: ThemeData.dark().copyWith(
        extensions: <UI>[UI.dark],
      ),
      home: const MyWidget(),
    );
  }
}
```

## Modules

A [module](#modules) is the main component of a theme with one of the types of UI-elements within it. \
You can access the module by name through `UI` or directly through `context`:

```dart
@override
Widget build(BuildContext context) {
  final UI ui = context.ui;
  //...
  // Next calls are same:
  ui.moduleName.//...
  context.moduleName.//...
  context.ui.moduleName.//...
  //...
}
```
It is recommended to define `final UI ui = context.ui;` at the beginning of the widget `build` method and use the first option to reduce to one the number of calls `.of(context)` and for convenience of use.

### Creation
To create a [module](#modules), you need to add name and type to the configuration file. \

```yaml
#...
modules:
  #...
  - module_name:
      type: <type>
```

> [!NOTE]
> Set names for modules, folders, files and other elements using `snake_case`.

The module structure is determined by:
- Folders inside the module:
  ```
  module_name
  └── folder_name_1
      └── folder_name_2
          └── file_name.json
  ```
  To access the elements of `file_name.json`, you need to call:
  ```dart
  ui.moduleName.folderName1.folderName2.fileName.//...
  ```
- The structure of the JSON file:
  ```json
  {
      "key_name_1": {
          "key_name_2": <value>
      }
  }
  ```
  To access `key_name_2`, you need to call:
  ```dart
  ui.moduleName.folderName1.folderName2.fileName.keyName1.keyName2
  ```
- Naming of folders and JSON keys with a '-' separator. \
  For a similar usage as above, the structure can be defined as follows:
  ```
  module_name
  └── folder_name_1-folder_name_2
      └── file_name.json
  ```
  ```json
  {
      "key_name_1-key_name_2": <value>
  }
  ```
### Themes
In [GenUIs] you can define different values for a UI element depending on the theme. To do this, one of the structure names must contain the theme name. Let's consider the following element call:
```dart
ui.moduleName.folder.name.key.element
```
Themed values for the element can be defined in several ways:

- With name of folder or file. \
  If you have files such as:
  ```json
  {
      "key": {
          "element": <themed value>
      }
  }
  ```
  You can use any of the suggested folder structures:
  ```
  module_name
  ├── dark
  │   └── folder
  │       └── name.json # with dark values
  └── light
      └── folder
          └── name.json # with light values

  module_name
  └── folder
      ├── dark
      │   └── name.json # with dark values
      └── light
          └── name.json # with light values

  module_name
  └── folder
      └── name
          ├── dark.json # with dark values
          └── light.json # with light values
  ```
- With name of JSON-key \
  If you have the folder structure such as:
  ```
  module_name
  └── folder
      └── name.json
  ```
  You can use any of the suggested files:
  ```json
  {
      "dark": {
          "key": {
              "element": <dark value>
          },
      },
      "light": {
          "key": {
              "element": <light value>
          }
      }
  }
  ///
  {
      "key": {
          "dark": {
              "element": <dark value>
          },
          "light": {
              "element": <light value>
          }
      }
  }
  ///
  {
      "key": {
          "element": {
              "dark": <dark value>,
              "light": <light value>
          }
      }
  }
  ```
- With `-` separator \
  In the cases described above, you can use the `-` separator in any name.
  - In folder or file names:
    ```
    module_name
    ├── dark-folder
    │   └── name.json
    └── light-folder.json
        └── name.json

    module_name
    └── folder
        ├── name-dark.json
        └── name-light.json

    module_name
    ├── folder-dark-name.json
    └── folder-light-name.json
    ```
  - In name of JSON-key
    ```json
    {
        "dark-key": {
            "element": <value>
        },
        "light-key": {
            "element": <value>
        }
    }

    {
        "key": {
            "dark-element": <value>,
            "light-element": <value>
        }
    }

    {
        "key-element-dark": <value>,
        "key-element-light": <value>
    }
    ```
### Themed and not-themed elements
A [module](#modules) can combine elements with and without a theme.
```json
{
    "element_1": {
        "dark": <dark value>,
        "light": <light value>
    },
    "element_2" <value>
}
```
> [!WARNING]  
> It is important to specify values for all themes for each themed element. \
> These values must be of the same type.

## Tokens

Similar to [module](#modules), a [token](#tokens) contains of elements of a single type, but without a structure or themes. A [token](#tokens) is a list of static elements. You can access to the [token](#tokens) elements use the following code:

```dart
@override
Widget build(BuildContext context) {
  //...
  TokenName.elementName
  //...
}
```
### Creation
To create a [token](#tokens), you need to add it to the configuration:

```yaml
#...
tokens:
  #...
  - token_name:
      type: <type>
```

Token elements are listed inside a single JSON file at the root of the assets folder:

```
assets
└── token_name.json
```

With elements inside:
```json
{
    "element_1": <value>,
    "element_2": <value>,
    "element_3": <value>,
    //...
}
```

## Supported types
The following types are supported by [GenUIs]:
- [asset](#asset)
- [color](#color)
- [font](#font)
- [shadow](#shadow)
- [gradient](#gradient)
- [number](#number)
- [blur](#number)
- [string](#string)

### asset
> value type: String

The value of an element with the [`asset`](#asset) type is the path to the file in the assets folder. \
For example, for the `icons` [module](#modules) with the folders structure:
```
assets
└── icons
    └── outline
        ├── arrow.svg
        ├── logo-dark.svg
        └── logo-light.svg
```
The result of the following calls will be:
```dart 
// "assets/icons/outline/arrow.svg" - for each theme
ui.icons.outline.arrow

// "assets/icons/outline/logo-dark.svg" - for dark theme
// "assets/icons/outline/logo-light.svg" - for light theme
ui.icons.outline.logo
```

### color
> value type: Color

The value of an element with the [`color`](#color) type is a `Color` specified in Hex code format.

For example, for the `colors` [module](#modules) with the file `assets/colors/colors.json`:
```json
{
    "green": "#00FF00",
    "red": {
        "dark": "#CC0000",
        "light": "#FF0000"
    }
}
```
The result of the following calls will be:
```dart 
// Color(0x00ff00) - for each theme
ui.colors.green

// Color(0xcc0000) - for dark theme
// Color(0xff0000) - for light theme
ui.colors.red
```

### font
> value type: TextStyle

The value of an element with the [`font`](#font) type is a `TextStyle` specified with the following pattern:
```
"<family> <weight> <size> <height> <optional: letter spacing> <optional: italic>"
```
For example, for the `fonts` [module](#modules) with the file `assets/fonts/roboto/roboto.json`:

```json
{
    "headline": "'Roboto' 700 20.0 24.0 0.2",
    "headline_italic": "'Roboto' 700 20.0 24.0 0.2 italic"
}
```
The result of the following calls will be:
```dart 
// TextStyle(
//   fontFamily: 'Roboto',
//   fontSize: 20.0,
//   height: 24.0 / 20.0,
//   fontWeight: FontWeight.w700,
// )
ui.fonts.roboto.headline

// TextStyle(
//   fontFamily: 'Roboto',
//   fontSize: 20.0,
//   height: 24.0 / 20.0,
//   fontWeight: FontWeight.w700,
//   fontStyle: FontStyle.italic,
// )
ui.fonts.roboto.headlineItalic
```

### shadow
> value type: BoxShadow

The value of an element with the [`shadow`](#shadow) type is a `BoxShadow` specified with the following pattern:

```
"<color> <dx> <dy> <blur> <spread> <optional: inset>"
```
> [!IMPORTANT]  
> Flutter does not support `inset` inside `BoxShadow`, so if you need to use `inset`, add [flutter_inset_shadow] to your project dependencies.

For example, for the `shadows` [module](#modules) with the file `assets/shadows/shadows.json`:

```json
{
    "card": "#000000 4.0 3.0 2.0 1.0",
    "banner":  "#FFFFFF 4.0 3.0 2.0 1.0 inset"
}
```
The result of the following calls will be:
```dart 
// BoxShadow(
//   color: Color(0x000000),
//   spreadRadius: 1.0,
//   blurRadius: 2.0,
//   offset: Offset(4.0, 3.0),
// )
ui.shadows.card

// flutter_inset_shadow.BoxShadow(
//   color: Color(0xffffff),
//   spreadRadius: 1.0,
//   blurRadius: 2.0,
//   offset: Offset(4.0, 3.0),
//   inset: true,
// )
ui.shadows.banner
```

### gradient
> value type: LinearGradient

The value of an element with the [`gradient`](#gradient) type is a `LinearGradient` specified with one of the following patterns:

```
"<begin_alignment> <end_alignment> <list of colors>"
```
```
"<begin_x> <begin_y> <end_x> <end_y> <list of colors>"
```
For example, for the `gradients` [module](#modules) with the file `assets/gradients/gradients.json`:

```json
{
    "background": "top_right bottom_left #FF0000 #00FF00",
    "scene": "0.2 0.4 0.6 0.8 #DD0000 #00DD00 #0000DD"
}
```
The result of the following calls will be:
```dart 
// LinearGradient(
//   begin: Alignment.topRight,
//   end: Alignment.bottomLeft,
//   colors: [
//     Color(0xff0000),
//     Color(0x00ff00),
//   ],
// )
ui.gradients.background

// LinearGradient(
//   begin: Alignment(0.2, 0.4),
//   end: Alignment(0.6, 0.8),
//   colors: [
//     Color(0xdd0000),
//     Color(0x00dd00),
//     Color(0x0000dd),
//   ],
// )
ui.gradients.scene
```

### number
> value type: int or double

The value of an element with the [`number`](#number) type is a `int` or `double` depends on value of element:

For example, for the `sizes` [token](#tokens) with the file `assets/sizes.json`:

```json
{
    "icon_small": "12.5",
    "icon_large": "30.0",
    "index": "30",
}
```
The result of the following calls will be:
```dart 
// double
// 12.5
Sizes.iconSmall

// double
// 30.0
Sizes.iconLarge

// int
// 30
Sizes.index
```

### blur
> value type: ImageFilter

The value of an element with the [`blur`](#blur) type is a `ImageFilter` specified with the following pattern:

```
"<sigmaX> <optional: sigmaY>"
```
For example, for the `blurs` [module](#modules) with the file `assets/blurs/blurs.json`:

```json
{
    "main": "0.125",
    "secondary": "0.2 0.5",
}
```
The result of the following calls will be:
```dart 
// ImageFilter.blur(
//   sigmaX: 0.125,
//   sigmaY: 0.125,
// )
ui.blurs.main

// ImageFilter.blur(
//   sigmaX: 0.2,
//   sigmaY: 0.5,
// )
ui.blurs.secondary
```

### string
> value type: String

The value of an element with the [`string`](#string) type is a `String` \
For example, for the `strings` [token](#tokens) with the file `assets/strings.json`:

```json
{
    "tag": "Tag 123",
    "flutter": "Flutter"
}
```

The result of the following calls will be:
```dart 
// "Tag 123"
Strings.tag

// "Flutter"
Strings.flutter
```

## Tokens inside Modules
You can use values from any [token](#tokens) inside the values of a [module](#modules) element using the following pattern:
```
$<token_name>:<value_name>
```

For example, for the `palette` [token](#tokens) with the file `assets/palette.json`:
```json
{
    "red_primary": "#FF0000",
    "red_secondary": "#DD0000",
    "green_primary": "#00FF00",
    "green_secondary": "#00DD00",
    "black": "#000000",
    "white": "#FFFFFF",
}
```

The file `assets/colors/colors.json` of the `colors` [module](#modules) will be:

```json
{
    "button": "$palette:red_primary",
    "text": "$palette:red_secondary",
    "border": "$palette:green_primary",
    "icon": "$palette:green_secondary",
}
```
The file `assets/shadows/shadows.json` of the `shadows` [module](#modules) will be:

```json
{
    "card": "$palette:black 4.0 3.0 2.0 1.0",
    "banner":  "$palette:white 4.0 3.0 2.0 1.0 inset"
}
```

## Colored modules

You can add [colors](#color) to a [module](#modules), so any element of this [module](#modules) will be called with an additional getter along with the `Color`.
- For `font` it returns `TextStyle` with the given `Color` in `color` field
- For other types it returns `(<ElementType>, Color)` record

> [!NOTE]  
> Instead of an additional getter, you can call the `.colored(...)` method to get an element with any other color.

To use [colors](#color) in a [module](#modules), add `color: true` to the module [configuration](#configuration):

```yaml
#...
modules:
  #...
  - module_name:
      type: <type>
      color: true
```

Next, in color [modules](#modules), specify the desired [color](#color) using the following pattern:

```
"<color> <module_name>:<optional alternative_name>"
```

For example, for the `colors` [module](#modules) with the file `assets/colors/colors.json`:

```json
{
    "red": {
        "dark": "#FF0000 icons",
        "light":  "#DD0000 icons",
    },
    "green": "#00FF00 fonts icons",
    "black": "#000000 fonts:primary",
}
```

The result of the following calls will be:
```dart 
// ("assets/icons/outline/logo.svg", Color(#ff0000)) - for dark theme
// ("assets/icons/outline/logo.svg", Color(#dd0000)) - for light theme
ui.icons.outline.logo.red

// ("assets/icons/outline/logo.svg", Color(#00ff00))
ui.icons.outline.logo.green

// ("assets/icons/outline/logo.svg", Color(#000000))
ui.icons.outline.logo.colored(
  ui.colors.black,
)

// TextStyle(
//   ...
//   color: Color(#00ff00)
// )
ui.fonts.roboto.headline.green

// TextStyle(
//   ...
//   color: Color(#000000)
// )
ui.fonts.roboto.headline.primary
```

## Configuration

The configuration is the basis of the [GenUIs]. It defines a list of [modules](#modules) and [tokens](#modules). It also allows you to fine-tune the generated code for different cases of interaction.

The configuration can be set:
- In the root of the project in the `genuis.yaml` file:
  ```yaml
  assets_path: assets/
  #...
  tokens:
    token_name:
      #...
  modules:
    module_name:
      #...
  ```
- In the `pubspec.yaml` file after `genuis:`:
  ```yaml
  # ...
  dev_dependencies:
    build_runner:
    genuis:
  # ...

  genuis: 
    assets_path: assets/
    #...
    tokens:
      token_name:
        #...
    modules:
      module_name:
        #...
  ```

The complete configuration with default values is as follows:
```yaml
assets_path: assets/
output_path: lib/ui/
themes:
  - light
  - dark
base_theme: base
class_type: theme_extension
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
### GenUIs configuration 

#### assets_path
> default: `assets/`

Specifies the path to the folder containing [modules](#modules) and [tokens](#tokens) files.

#### output_path
> default: `lib/ui/`

Specifies the path to the folder where the generated `.ui.dart` theme files will be located.

#### themes
> default: `light, dark`

Specifies the list of [themes](#themes) for [modules](#modules).

#### base_theme
> default: `base`

Specifies the the name of the base [theme](#themes) for [modules](#modules), applied to elements that do not have a theme specified

#### class_type
> default: `theme_extension`

Specifies the type of theme classes. Possible values: 
- `theme_extension` \
  Classes extends from ThemeExtension, override the `copyWith` and the `lerp` methods, and can be integrated into `ThemeData`.

  ```dart
  class Example extends ThemeExtension<Example>{
    final ElementType element1;
    final ElementType element2;
    //...

    const Example({
      //...
    });

    @override
    UIFontsManropeLargeTitle copyWith({
      //...
    }){
      //...
    }

    @override
    Example lerp(ThemeExtension<Example>? other, double t){
      //...
    }

    static final Example theme1 = Example(
      element1: <theme1 value>
      element2: <theme1 value>
      //...
    );
    static final Example theme2 = Example(
      element1: <theme2 value>
      element2: <theme2 value>
      //...
    );
  }
  ```
- `getter` \
  A lightweight version where all fields are turned into getters and determined through inheritance. 
  > [!NOTE]  
  > It is recommended to use when the features of ThemeExtension are not needed and only the structure of theme classes is required.
  ```dart
  class Example {
    ElementType get element1;
    ElementType get element2;
    //...

    const Example._();
  
    static const theme1 = _ExampleTheme1();
    static const theme2 = _ExampleTheme2();
  }

  class _ExampleTheme1 {
    @override
    ElementType get element1 => <theme1 value>;
    @override
    ElementType get element2 => <theme1 value>;
    //...
    const _ExampleTheme1(): super._();
  }

  class _ExampleTheme2 {
    @override
    ElementType get element1 => <theme2 value>;
    @override
    ElementType get element2 => <theme2 value>;
    //...
    const _ExampleTheme2(): super._();
  }
  ```

#### dart_line_length
> default: `100`

Specifies the line length for dart formatter in generated `.ui.dart` files.

#### class_name
> default: `UI`

Specifies the name for the main [GenUIs] class.

#### field_name
> default: `ui`

Specifies the name for the main [GenUIs] getter and field.

An example of an alternative `class_name` and `field_name`:
```yaml
class_name: App
field_name: app
```
```dart
@override
Widget build(BuildContext context) {
  return MaterialApp(
    theme: ThemeData.light().copyWith(
      extensions: <App>[App.light],
    ),
    darkTheme: ThemeData.dark().copyWith(
      extensions: <App>[App.dark],
    ),
    home: const MyWidget(),
  );
}
//...
@override
Widget build(BuildContext context) {
  final App app = context.app;
  //...
  app.moduleName.//...
  context.moduleName.//...
  context.app.moduleName.//...
  //...
}
```

### Tokens configuration 

#### type
> default: `asset`

Specifies the [type](#supported-types) of [token](#tokens) elements.

#### path
> default: `<token_name>.json`

Specifies the path to the file containing [token](#tokens) elements.

#### class_name
> default: `<token_name in PascalCase>` - 

Specifies the name of the [token](#tokens) class.

#### class_type
> default: `static`

Specifies the type of the [token](#tokens) class. Possible values:

- `static` \
  A class with static fields for each token

  ```dart
  class Example{
    static final ElementType element1 = <value>;
    static final ElementType element2 = <value>;
    //...
  }
  ```
- `enum` \
  A class with elements that represent an `enum`
  > [!NOTE]  
  > It is recommended to use when you need to set token values as an enumeration with the ability to use `Example` as a type or use a `switch` statement.


  ```dart
  enum Example {
    element1(<value>),
    element2(<value>),
    //...
    ;

    const Example(this.value);

    final ElementType value;
  }
  ```

#### field_name
> default: `value`

Specifies the name of the field used to get the value from the [enum token](#class_type-1).

### Modules configuration 

#### type 
> default: `asset`

Specifies the [type](#supported-types) of [module](#modules) elements.

#### path 
> default: `<module_name>/`

Specifies the path to the folder containing [module](#modules) files.

#### token_class_type 
> default: `null`

Specifies the type of the [token](#tokens) class, specially created for the module with all values of elements of them.

```dart
class ExampleToken{
    static final ElementType exampleElement1Theme1 = <theme1 value>;
    static final ElementType exampleElement2Theme1 = <theme1 value>;
    static final ElementType exampleElement1Theme2 = <theme2 value>;
    static final ElementType exampleElement2Theme2 = <theme2 value>;
    //...
}

class Example extends ThemeExtension<Example>{
  final ElementType element1;
  final ElementType element2;
  //...

  static final Example theme1 = Example(
    element1: ExampleToken.exampleElement1Theme1,
    element2: ExampleToken.exampleElement2Theme1,
    //...
  );
  static final Example theme2 = Example(
    element1: ExampleToken.exampleElement1Theme2,
    element2: ExampleToken.exampleElement2Theme2,
    //...
  );
}
```

Possible values:
- `null` \
  [Token](#tokens) class for [module](#modules) will not be created.
- `static` or `enum` \
  Similar to [tokens](#class_type-1)

#### token_class_name 
> default: `<module_name>Token`

Specifies the name of the [token class](#token_class_type) for [module](#modules).

#### token_filed_name 
> default: `value`

Specifies the name of the field used to get the value from the [enum module token](#token_class_type).

#### color 
> default: `false`

Specifies whether to use [colors](#colored-modules) in the [module](#modules).

#### color_class_name 
> default: `null`

Specifies the name of color class returned by the additional getter. \
- If specified, a color class will be generated:
  ```dart
  class ColorClassName{
      final ElementType value;
      final Color color;
      const ColorClassName(this.value, this.color);
  }
  ```
- If not specified, the record `(ElementType, Color)` will be used.

#### color_filed_name 
> default: `value`

Specifies the name of the field used to get the value from the [color class](#color_class_name).

[build_runner]: https://pub.dev/packages/build_runner
[flutter_inset_shadow]: https://pub.dev/packages/flutter_inset_shadow
[GenUIs]: https://pub.dev/packages/genuis