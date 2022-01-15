// Grid View Controller
import 'package:flutter/material.dart';

class MyGridView extends StatefulWidget {
  const MyGridView({Key? key}) : super(key: key);

  @override
  _MyGridViewState createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Builder'),
      ),
      body: GridView.count( // 화면 회전 시 보정값이 없다.
        crossAxisCount: 3,
        children: List.generate(50, (position) {
          return Center(
            child: Text('Item $position'),
          );
        }),
        // children: [
        //   Center(child: Text('Item 1')),
        //   Center(child: Text('Item 1')),
        //   Center(child: Text('Item 1')),
        //   Center(child: Text('Item 1')),
        //   Center(child: Text('Item 1')),
        // ],
      ),
    );
  }
}
