import 'package:flutter/material.dart';

class Common {
  static Scaffold scaffold(String title, Widget _widget) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text(title + ' 레이아웃 연습')),
      body: _widget,
    );
  }
}
