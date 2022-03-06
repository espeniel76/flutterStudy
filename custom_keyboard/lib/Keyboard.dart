import 'dart:core';
import 'package:custom_keyboard/KeyboardKey.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomKeyboardScreen extends StatefulWidget {
  @override
  _CustomKeyboardScreenState createState() => _CustomKeyboardScreenState();
}

class _CustomKeyboardScreenState extends State<CustomKeyboardScreen> {
  late String amount;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    amount = '';
  }

  final keys = [
    ['1', '2', '3'],
    ['4', '5', '6'],
    ['7', '8', '9'],
    ['00', '0', Icon(Icons.keyboard_backspace)],
  ];

  onBackspacePress(val) {
    setState(() {
      amount = amount.substring(0, amount.length - 1);
    });
  }

  renderKeyboard() {
    return keys
        .map(
          (x) => Row(
            children: x.map(
              (y) {
                return Expanded(
                  child: KeyboardKey(label: y, onTap: (val) {}, value: y),
                );
              },
            ).toList(),
          ),
        )
        .toList();
  }

  onNumberPress(val) {
    if(val == '0' && amount.length == 0){
      return;
    }

    setState(() {
      amount = amount + val;
    });
  }

  renderConfirmButton() {
    return Row(
      children: [
        Expanded(
          child: FlatButton(
            onPressed: amount.length == 0 ? null : () {}, // 값이 없으면 disable
            color: Colors.orange,
            disabledColor: Colors.grey[200],
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                '확인',
                style: TextStyle(
                  color: amount.length == 0 ? Colors.grey : Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  renderText() {
    String display = '보낼금액';
    TextStyle style = TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.bold,
      fontSize: 30.0,
    );

    if (amount.length != 0) {
      NumberFormat f = NumberFormat('#,###');

      display = f.format(int.parse(amount)) + '원';
      style = style.copyWith(
        color: Colors.black,
      );
    }

    return Expanded(
      child: Center(
        child: Text(
          display,
          style:style,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              renderText(),
              ...renderKeyboard(),
              SizedBox(height: 16.0),
              renderConfirmButton(),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
