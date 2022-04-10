import 'package:flutter/material.dart';

// class GlobalKeyTest2 extends StatelessWidget {
//   // const GlobalKeyTest({Key? key}) : super(key: key);
//
//   GlobalKey key1 = GlobalKey();
//   GlobalKey key2 = GlobalKey();
//   GlobalKey key3 = GlobalKey();
//   GlobalKey key4 = GlobalKey();
//   GlobalKey key5 = GlobalKey();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('테스트'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.filter_center_focus, color: Colors.black),
//             onPressed: () {
//               Scrollable.ensureVisible(key5.currentContext!);
//             },
//           ),
//         ],
//       ),
//       body: Container(
//         child: ListView(
//           children: [
//             ListTile(key: key1, title: Text('테스트1', style: TextStyle(fontSize: 100))),
//             ListTile(key: key2, title: Text('테스트2', style: TextStyle(fontSize: 100))),
//             ListTile(key: key3, title: Text('테스트3', style: TextStyle(fontSize: 100))),
//             ListTile(key: key4, title: Text('테스트4', style: TextStyle(fontSize: 100))),
//             ListTile(key: key5, title: Text('테스트5', style: TextStyle(fontSize: 100))),
//           ],
//         ),
//       ),
//     );
//   }
// }

class GlobalKeyTest extends StatefulWidget {
  const GlobalKeyTest({Key? key}) : super(key: key);

  @override
  State<GlobalKeyTest> createState() => _GlobalKeyTestState();
}

class _GlobalKeyTestState extends State<GlobalKeyTest> {
  // GlobalKey key1 = GlobalKey();
  // GlobalKey key2 = GlobalKey();
  // GlobalKey key3 = GlobalKey();
  // GlobalKey key4 = GlobalKey();
  // GlobalKey key5 = GlobalKey();
  List<GlobalKey> keys = [];
  List<int> list = [];
  late List<ListTile> listTile = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < 10; i++) {
      keys.add(GlobalKey());
      list.add(i);
      listTile.add(renderTile(i));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('테스트'),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_center_focus, color: Colors.black),
            onPressed: () {
              Scrollable.ensureVisible(keys[8].currentContext!);
            },
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(child: ListView(children: listTile)),
      ),
    );
  }

  ListTile renderTile(index) {
    return ListTile(key: keys[index], title: Text('테스트 ' + index.toString(), style: const TextStyle(fontSize: 100)));
  }
}
