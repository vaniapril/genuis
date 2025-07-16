# Genuis
Добро пожаловать в Genuis, генератор кода для классов тем, позволяющий удобно созадвать и тспользовать элементы UI основываясь на структуре папки с ассетами и json-файлов конфигурации.

# Motivation
Задавать элементы UI непосредвсвенно в виждете является плохой практикой, неизбежно приводить к перегрузке кода проекта, постоянному дублированию одних и тех же елементов и не дает возможности задать хотя бы базовые темную и светлую темы для приложения:

```dart
@override
Widget build(BuildContext context) {
  return Row(
    children: [
      CustomIcon(
        path: 'assets/icons/outline/example.svg',
        color: Colors.white,
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
Для решения этих пробелем распространенной практикой является создание кастомных классов с темами. Но данные классы необходимо создать и поддерживать, что в крупных проектах является непростой задачей.

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
GenUIs возьмет на себя генерацию классов для тем, от вас потребуется лишь обновить структуру вашей папки с ассетами и создать json файлы под нужные элементы UI. Доступ в этим элементам обеспецивается через удобный вызов цепочки геттеров, что разгружает код и делает его более читабельным. 
```
@override
Widget build(BuildContext context) {
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
Пример использования элементов:
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
          'Hello World!',
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
### 1. Добавьте пакет в зависимость

dfsdf

### 2. Созадйте файл конфигурции

Файл конфигурации ```genuis.yaml``` для примера:

```yaml
themes:
  - light
  - dark

tokens:
  - sizes:
      type: number

modules:
  - colors:
      type: color

  - icons:
      type: asset
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

### 3. Обновите структуру папки с ассетами

Структура папки с ассетами для примера:

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
└── sizes.json
```

```assets/colors/primary.json```:
```json
{
    "red": {
        "light": "#FF0000",
        "dark": "#CC0000"
    }
}
```
```assets/colors/secondary.json```:
```json
{
    "primary_text": {
        "light": "#FFFFFF fonts:primary",
        "dark": "#000000 fonts:primary"
    },
    "white_icon": {
        "light": "#FFFFFF icons:white",
        "dark": "#000000 icons:white"
    }
}
```
```assets/fonts/roboto/roboto.json```:
```json
{
    "headline": "'Roboto' 700 20px 24px 0.2px"
}
```
```assets/shadows/shadows.json```:
```json
{
    "card": "#000000 4px 4px 1px 0px"
}
```
```assets/gradients/gradients.json```:
```json
{
    "background": "topRight bottomLeft #ff0000 #00ff00"
}
```
```assets/blurs/blurs.json```:
```json
{
    "blur4": "0.125"
}
```
```assets/sizes.json```:
```json
{
    "icon_medium": "20.0px"
}
```

4. Зарустите генератор

sdfsdf

5. Добавьте сгенерированый екстеншн в темы и используйте

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

## Supported types
### blur

### color

### font

### asset

### shadow

### number

### string


## Config file 

Полный файл конфигурции с дефолтными значеними. Конфигруацию можно добавить в pubspec.yaml:
```yaml
genuis: 
    assets_path:
        ...
```
Но и в отдельном файле
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
#### assets_path
> dafault: ```assets/```

Указывает на путь к папке с ассетами

#### output_path
> dafault: ```lib/ui/```

Указывает на путь к папке, в которую будут сгенерированы файлы с темами

#### themes
> dafault: ```light, dark```

Список тем

#### base_theme
> dafault: 

Название базовой темы для компонентов, тема которым не указана

#### class_type
> dafault: ```theme_extension```

Тип генерируемых классов. Возможные значения: 
- ```theme_extension``` - класс основанный на ThemeExtension, интегрируется в материал тему и поддерживает все ее методы
```dart
class Example extends ThemeExtension<Example>{

}
```
- ```getter``` - облегченный вариант, все поля в которых превращенны в геттеры и определяются через наследование. Рекомендуется использовать, когда особенности ThemeExtension не нужны и от классов тем, нужна только структура
```dart
class Example {

}

class ExampleLight {
    
}

class ExampleDark {
    
}
```

#### dart_line_length
> dafault: ```100```

Значение длины строки в сгенерированных файлах

#### class_name
> dafault: ```UI```

Название для главного класса тем

#### field_name
> dafault: ```ui```

Название поля класса тем

### tokens
Список конфигов токенов

#### type
> dafault: ```asset```

Тип элементов токена

#### path
> dafault: ```<token_name>.json```

Путь к файлу токена

#### class_name
> dafault: ```<token_name>``` - in PascalCase

Название класса токена

#### class_type
> dafault: ```static```

Тип генерируемого класса с токенами. Возможные значения: 
- ```static``` - класс со статическими полями под каждый токен
```dart
class Example extends ThemeExtension<Example>{

}
```
- ```enum``` - класс элементы которого представляют собой enum
```dart
enum Example {

}
```

#### field_name
> dafault: ```value```

Название для поля, по которому получается значение из токена. Используется только если ```class_type: enum```

### modules
Список конфигов модулей

#### type 
> default: ```asset```

Тип элементов модуля

#### path 
> default: ```<module_name>/```

Путь к папке с элементами модуля

#### token_class_type 
> default: ```null```

Тип класса токено для модуля. Если не указано, то элементы модуля не будет заворачиваться в токен. Аналогично с ```class_type``` в ```tokens```

#### token_class_name 
> default: ```<module_name>Token```

Название для класса токена, аналогично с ```class_name``` в ```tokens```

#### color 
> default: ```false```

Использовать ли расширение для цветов

#### color_class_name 
> default: ```null```

Название для класса цветов