import 'package:flutter/material.dart';
import 'package:height_slider/height_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: 'Demo',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int height = 170;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
              child: Center(
          child: HeightSlider(
            minHeight: 70,
            maxHeight: 750,
            height: height,
            onChange: (val) {
              debugPrint('$val');
              setState(() => height = val);
            },
            unit: 'cm', // optional
          ),
        ),
      ),
    );
  }
}
