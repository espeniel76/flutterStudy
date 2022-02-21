import 'package:flutter/material.dart';

class MyExercise01 extends StatefulWidget {
  final String title;

  const MyExercise01(this.title, {Key? key}) : super(key: key);

  @override
  _MyExercise01State createState() => _MyExercise01State();
}

class _MyExercise01State extends State<MyExercise01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(title: Text(widget.title)),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(color: Colors.red, width: 100),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(color: Colors.yellow, width: 100, height: 100),
                  Container(color: Colors.green, width: 100, height: 100),
                ],
              ),
            ),
            Container(color: Colors.blue, width: 100),
          ],
        ),
      ),
    );
  }
}
