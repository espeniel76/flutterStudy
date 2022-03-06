import 'package:flutter/material.dart';
import 'package:layout_exercise/exercise/ContainerEx.dart';

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
        // primarySwatch: Colors.deepOrange,
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
              _push(context, 'Container', ContainerEx01('Container1')),
              _push(context, 'Container2', ContainerEx02('Container2')),
              _push(context, 'Container3', ContainerEx03('Container3')),
              _push(context, 'Container4', ContainerEx04('Container4')),
              _push(context, 'SafeArea', SafeAreaEx01('SafeArea')),
              _push(context, 'Center', CenterEx01('Center')),
              _push(context, 'Padding', ContainerEx02('Padding')),
              _push(context, 'Column1', ColumnEx01('Column1')),
              _push(context, 'Column2', ColumnEx02('Column2')),
              _push(context, 'Column3', ColumnEx03('Column3')),
              _push(context, 'Column4', ColumnEx04('Column4')),
              _push(context, 'Row1', RowEx01('Row1')),
              _push(context, 'Row2', RowEx02('Row2')),
              _push(context, 'Row3', RowEx03('Row3')),
              _push(context, 'Expanded', ExpandedEx01('Expanded')),
              _push(context, 'Stack', StackEx01('Stack')),
              _push(context, 'SizedBox', SizedBoxEx01('SizedBox')),
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
            Text(_title + ' 레이아웃 연습'),
          ],
        ),
      ),
    );
  }
}
