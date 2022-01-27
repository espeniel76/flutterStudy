import 'package:flutter/material.dart';

class ChangeColor extends StatefulWidget {
  const ChangeColor({Key? key}) : super(key: key);

  @override
  _ChangeColorState createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {
  // Background color of the box
  Color _bgColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kindacode.com'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            width: 300,
            height: 300,
            color: _bgColor,
            child: Center(
              child: Text(
                'Hello',
                style: TextStyle(fontSize: 80, color: _bgColor.computeLuminance() > 0.5 ? Colors.black : Colors.white),
              ),
            ),
          ),
          TextField(
            style: TextStyle(fontSize: 80, color: _bgColor),
          ),

          // The buttons below used to change the box color
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Green Acent
              MaterialButton(
                onPressed: () {
                  setState(() {
                    _bgColor = Colors.greenAccent;
                  });
                },
                color: Colors.greenAccent,
              ),

              // Orange
              MaterialButton(
                onPressed: () {
                  setState(() {
                    _bgColor = Colors.orange;
                  });
                },
                color: Colors.orange,
              ),

              // Yellow
              MaterialButton(
                onPressed: () {
                  setState(() {
                    _bgColor = Colors.yellow;
                  });
                },
                color: Colors.yellow,
              ),

              // Black
              MaterialButton(
                onPressed: () {
                  setState(() {
                    _bgColor = Colors.black;
                  });
                },
                color: Colors.black,
              )
            ],
          )
        ],
      ),
    );
  }
}
