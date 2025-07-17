import 'package:flutter/material.dart';
import 'ui/ui.ui.dart';

void main() {
  runApp(const MyApp());
}

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
