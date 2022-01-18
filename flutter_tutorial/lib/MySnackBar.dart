import 'package:flutter/material.dart';

class MySnackBar extends StatefulWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  _MySnackBarState createState() => _MySnackBarState();
}

class _MySnackBarState extends State<MySnackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar'),
      ),
      body: Builder(
        builder: (context) => Center(
          child: RaisedButton(
            onPressed: () {
              final snackBar = SnackBar(
                content: const Text('메일이 삭제 되었습니다.'),
                action: SnackBarAction(
                  label: '취소',
                  onPressed: () {
                    //
                  },
                ),
              );
              Scaffold.of(context).showSnackBar(snackBar);
            },
            child: const Text('Show SnackBar'),
          ),
        ),
      ),
    );
  }
}
