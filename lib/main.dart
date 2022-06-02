import 'package:flutter/material.dart';

void main() {
  runApp(const Demo());
}

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo'),
        ),
        body: Center(
            child: Text('You tapped $_counter times.')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState((){
              _counter ++;
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
