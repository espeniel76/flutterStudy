import 'package:flutter/material.dart';

class MySwipeToDismissState extends StatefulWidget {
  const MySwipeToDismissState({Key? key}) : super(key: key);

  @override
  _MySwipeToDismissStateState createState() => _MySwipeToDismissStateState();
}

class _MySwipeToDismissStateState extends State<MySwipeToDismissState> {
  final items = List<String>.generate(20, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Swipe To Dismiss'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
            background: Container(color: Colors.red,),
            direction: DismissDirection.startToEnd,
            onDismissed: (direction) {
              setState(() {
                //실제로 삭제를 해버린다.
                items.removeAt(index);
              });
            },
            key: Key(item),
            child: ListTile(
              title: Text('${items[index]}'),
            ),
          );
        },
      ),
    );
  }
}
