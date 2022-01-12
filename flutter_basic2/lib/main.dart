import 'package:flutter/material.dart';
import 'cupertino_page.dart';

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
  int _count = 0;
  bool _is_bool = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _changeMessage,
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_message, style: TextStyle(fontSize: 30)),
            Text('$_count', style: TextStyle(fontSize: 30)),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CupertinoPage()),
                );
              },
              child: Text('화면 이동'),
            )
          ],
        ),
      ),
    );
  }

  void _changeMessage() {
    setState(() {
      if (!_is_bool) {
        _message = '헬로 월드';
        _is_bool = true;
      } else {
        _message = 'Hello World';
        _is_bool = false;
      }

      _count++;
    });
  }
}
