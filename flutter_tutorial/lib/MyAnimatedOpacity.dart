import 'package:flutter/material.dart';

class MyAnimatedOpacity extends StatefulWidget {
  const MyAnimatedOpacity({Key? key}) : super(key: key);

  @override
  _MyAnimatedOpacityState createState() => _MyAnimatedOpacityState();
}

class _MyAnimatedOpacityState extends State<MyAnimatedOpacity> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedOpacity'),
      ),
      body: Center(
        // AnimatedOpacity 투명도 주기
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 500), // 필수 값
          opacity: _visible ? 1.0 : 0.0, // 필수 값
          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),

        // 플로팅 액션 바 클릭 시
        onPressed: () {
          setState(() {
            _visible = !_visible;
          });
        },
      ),
    );
  }
}
