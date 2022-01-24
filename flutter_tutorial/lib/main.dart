import 'package:flutter/material.dart';
import 'package:flutter_tutorial/DynamicFocus.dart';
import 'package:flutter_tutorial/MyAnimatedContainer.dart';
import 'package:flutter_tutorial/MyAnimatedOpacity.dart';
import 'package:flutter_tutorial/MyDrawer.dart';
import 'package:flutter_tutorial/MyFormValidation.dart';
import 'package:flutter_tutorial/MyGridView.dart';
import 'package:flutter_tutorial/MyOrientationBuilder.dart';
import 'package:flutter_tutorial/MySnackBar.dart';
import 'package:flutter_tutorial/MySwipeToDismiss.dart';
import 'package:flutter_tutorial/MyTabController.dart';

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _push(context, '애니메이션 컨테이너', const MyAnimatedContainer()),
              _push(context, '애니메이션 오페서티', const MyAnimatedOpacity()),
              _push(context, '드루이어', const MyDrawer()),
              _push(context, '스넥바', const MySnackBar()),
              _push(context, '그리드 뷰', const MyGridView()),
              _push(context, '오리엔테이션 뷰', const MyOrientationBuilder()),
              _push(context, '탭 컨트롤러', const MyTabController()),
              _push(context, '폼 벨리데이션', const MyFormValidation()),
              _push(context, '스왑투디스미션', const MySwipeToDismissState()),
              _push(context, '다이나믹포커스', DynamicFocus()),
            ],
          ),
        ),
      ),
    );
  }

  RaisedButton _push(BuildContext _context, String _title, Widget _widget) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(_context, MaterialPageRoute(builder: (context) => _widget));
      },
      child: Text(_title),
    );
  }
}
