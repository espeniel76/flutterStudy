import 'package:flutter/material.dart';

class ActiveTextTest extends StatefulWidget {
  const ActiveTextTest({Key? key}) : super(key: key);

  @override
  _ActiveTextTestState createState() => _ActiveTextTestState();
}

class _ActiveTextTestState extends State<ActiveTextTest> {
  String a = '';
  Widget _text = Text('');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      _text = Text(a, style: TextStyle(fontSize: 30));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Active Text test'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              _text,
              renderButton('A'),
              renderButton('B'),
              // ElevatedButton(
              //     onPressed: () {
              //       setState(() {
              //         a += 'A';
              //       });
              //     },
              //     child: Text('A')),
              // ElevatedButton(
              //     onPressed: () {
              //       setState(() {
              //         a += 'B';
              //       });
              //     },
              //     child: Text('B'))
            ],
          ),
        ),
      ),
    );
  }

  Widget renderButton(String key) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            a += key;
          });
        },
        child: Text(key));
  }
}
