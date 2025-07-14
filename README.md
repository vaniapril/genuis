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


## Types
Package support next types:
* asset
* color


### asset
