import 'package:exercise/ChangeColor.dart';
import 'package:exercise/DynamicFocus.dart';
import 'package:exercise/HttpTest.dart';
import 'package:exercise/MyFormValidation.dart';
import 'package:exercise/PageViewTest.dart';
import 'package:exercise/SvgTest.dart';
import 'package:exercise/SyncfusionFlutterGaugesTest.dart';
import 'package:exercise/TTSTest.dart';
import 'package:exercise/TransitionTest.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
      appBar: AppBar(title: const Text('샘플')),
      body: SingleChildScrollView(
        child: Center(
          child: Wrap(
            children: [
              _push(context, '폼 벨리데이션', const MyFormValidation()),
              _push(context, '다이나믹포커스', DynamicFocus()),
              _push(context, '체인지 컬러', ChangeColor()),
              _push(context, '페이지전환', TransitionTest()),
              _push(context, 'TTS 테스트', TTSTest()),
              _push(context, '버블페인터', CustomPaint()),
              _push(context, 'SVG', SvgTest()),
              _push(context, 'Page View', PageViewTest()),
              _push(context, 'Gauges View', SyncfusionFlutterGaugesTest()),
              _push(context, 'REST Test', RestTest()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _push(BuildContext _context, String _title, Widget _widget) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(_context, MaterialPageRoute(builder: (context) => _widget));
        },
        child: Text(_title),
      ),
    );
  }
}
