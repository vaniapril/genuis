import 'ui/ui.ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeData.copyWith(
        extensions: <UI>[UI.light],
      ),
      darkTheme: themeData.copyWith(
        extensions: <UI>[UI.dark],
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
            Image.asset(ui.images.background.book.value),
            Image.asset(ui.icons.filled.car.active.value.value),
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
