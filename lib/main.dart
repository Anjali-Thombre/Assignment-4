import 'package:flutter/material.dart';

void main() {
  runApp(SetStateCounterApp());
}

class SetStateCounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SetStateCounterScreen(),
    );
  }
}

class SetStateCounterScreen extends StatefulWidget {
  @override
  _SetStateCounterScreenState createState() => _SetStateCounterScreenState();
}

class _SetStateCounterScreenState extends State<SetStateCounterScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter ')),
      body: Center(
        child: Text('Counter: $_counter', style: TextStyle(fontSize: 24)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.add),
      ),
    );
  }
}
