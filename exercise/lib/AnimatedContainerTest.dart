import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerTest extends StatefulWidget {
  const AnimatedContainerTest({Key? key}) : super(key: key);

  @override
  _AnimatedContainerTestState createState() => _AnimatedContainerTestState();
}

class _AnimatedContainerTestState extends State<AnimatedContainerTest> {


  double _size = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedContainer')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            final random = Random();
            setState(() {
              _size = random.nextInt(100).toDouble();
            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: 10,
            height: _size,
            child: Container(color: Colors.blueAccent,),
            curve: Curves.fastOutSlowIn,
          ),
        ),
      ),
    );
  }
}
