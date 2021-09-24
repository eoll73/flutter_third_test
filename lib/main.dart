import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _checked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Animation of a square'),
      // ),
      body: Center(
        child: AnimatedContainer(
          width: _checked ? 300.0 : 150.0,
          height: _checked ? 300.0 : 150.0,
          color: _checked ? Colors.red : Colors.red,
          duration: const Duration(seconds: 1),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          _checked = !_checked;
        });
      }),
    );
  }
}
