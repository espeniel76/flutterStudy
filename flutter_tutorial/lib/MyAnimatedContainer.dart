import 'dart:math';

import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({Key? key}) : super(key: key);

  @override
  _MyAnimatedContainerState createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  double _w = 50;
  double _h = 50;
  Color _c = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainer'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _w,
          height: _h,
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          decoration: BoxDecoration(
            color: _c,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final r = Random();
          setState(() {
            _w = r.nextInt(300).toDouble();
            _h = r.nextInt(300).toDouble();
            _c = Color.fromRGBO(r.nextInt(256), r.nextInt(256), r.nextInt(256), 1);
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
