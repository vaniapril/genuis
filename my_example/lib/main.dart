import 'dart:ui';

import 'ui/ui.ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final UI ui = context.ui;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ui.colors.keywords.abstract_,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: ui.fonts.manrope.callout.regular.error,
            ),
            Text(
              '$_counter',
              style: ui.fonts.manrope.callout.semiBold.error,
            ),
            Image.asset(ui.images.background.book.brand.$1)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

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

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Color
        ColoredBox(
          color: CustomColors.of(context).primaryRed,
        ),
        // Shadow
        DecoratedBox(
          decoration: BoxDecoration(
            boxShadow: [
              CustomShadows.of(context).card,
            ],
          ),
        ),
        // Gradient
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: CustomGradients.of(context).card,
          ),
        ),
        // Icon

        // TextStyle
        Text(
          'Hello World!',
          style: CustomFonts.of(context).robotoHeadline.copyWith(
                color: CustomColors.of(context).textPrimary,
              ),
        ),
        // Blur
        BackdropFilter(
          filter: CustomBlurs.of(context).blur4,
        ),
      ],
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
            gradient: ui.gradients.card,
          ),
        ),
        // Icon
        CustomIcon(
          icon: ui.icons.outline.example.white,
        ),
        // TextStyle
        Text(
          'Hello World!',
          style: ui.fonts.roboto.headline.primary,
        ),
        // Blur
        BackdropFilter(
          filter: ui.blurs.blur4,
        ),
      ],
    );
  }
}
