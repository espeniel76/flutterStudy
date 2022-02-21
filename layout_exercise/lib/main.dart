import 'package:flutter/material.dart';
import 'package:layout_exercise/exercise/MyExercise01.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Exercise',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const HelloPage(),
    );
  }
}

class HelloPage extends StatefulWidget {
  const HelloPage({Key? key}) : super(key: key);

  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('연습항목')),
      body: SingleChildScrollView(
        child: Center(
          child: Wrap(
            children: [
              _push(context, 'Container 레이아웃 연습', const MyExercise01('Container 레이아웃 연습')),
            ],
          ),
        ),
      ),
    );
  }

  Widget _push(BuildContext _context, String _title, Widget _widget) {
    return Container(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(_context, MaterialPageRoute(builder: (context) => _widget));
        },
        child: Row(
          children: [
            const Icon(Icons.offline_bolt),
            const SizedBox(width: 5),
            Text(_title),
          ],
        ),
      ),
    );
  }
}
