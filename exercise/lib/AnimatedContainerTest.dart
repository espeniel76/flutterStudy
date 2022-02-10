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
              _size = random.nextInt(200).toDouble() + 100;
            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: _size,
            height: _size,
            // child: Container(color: Colors.blue),
            // child: Icon(Icons.description, size: _size,),
            child: Image.asset('assets/images/sashaaaaaaaaaa2.PNG'),
            curve: Curves.fastOutSlowIn,
          ),
        ),
      ),
    );
  }
}
