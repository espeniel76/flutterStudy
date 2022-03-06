import 'package:flutter/material.dart';

class AnimatedFaded extends StatefulWidget {
  const AnimatedFaded({Key? key}) : super(key: key);

  @override
  State<AnimatedFaded> createState() => _AnimatedFadedState();
}

class _AnimatedFadedState extends State<AnimatedFaded> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity Sample'),
      ),
      body: AnimatedOpacity(
        opacity: _visible ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 1000),
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.amber,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: 'Toggle Opacity',
        child: const Icon(Icons.flip),
      ),
    );
  }
}
