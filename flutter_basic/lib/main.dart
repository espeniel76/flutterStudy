import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// 상태가 없는 위젯 StatelessWidget
// StatelessWidget 화면 상태 변경 불가
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HelloPage('Hello World'),
    );
  }
}

class HelloPage extends StatefulWidget {
  final String title;

  HelloPage(this.title) : super();

  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  String _message = 'Hello World';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: _changeMessage,
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Text(
        _message,
        style: const TextStyle(fontSize: 30),
      ),
    );
  }

  void _changeMessage() {
    setState(() {
      _message = '헬로 월드';
    });
  }
}
