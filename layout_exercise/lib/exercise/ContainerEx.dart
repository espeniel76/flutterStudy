/**
 * https://dev-yakuza.posstree.com/ko/flutter/layout/
 * 블로그 예제 참조
 */
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layout_exercise/exercise/Common.dart';

class ContainerEx01 extends StatelessWidget {
  final String title;

  ContainerEx01(this.title);

  @override
  Widget build(BuildContext context) {
    return Common.scaffold(
      this.title,
      SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(color: Colors.red, width: 100),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(color: Colors.yellow, width: 100, height: 100),
                  Container(color: Colors.green, width: 100, height: 100),
                ],
              ),
            ),
            Container(color: Colors.blue, width: 100),
          ],
        ),
      ),
    );
  }
}

class ContainerEx02 extends StatelessWidget {
  final String title;

  ContainerEx02(this.title);

  @override
  Widget build(BuildContext context) {
    return Common.scaffold(this.title, Container(color: Colors.red));
  }
}

class ContainerEx03 extends StatelessWidget {
  final String title;

  ContainerEx03(this.title);

  @override
  Widget build(BuildContext context) {
    return Common.scaffold(
      this.title,
      Container(
        color: Colors.red,
        child: Text(
          'Hello world',
          style: TextStyle(color: Colors.yellow),
        ),
      ),
    );
  }
}

class ContainerEx04 extends StatelessWidget {
  final String title;

  ContainerEx04(this.title);

  @override
  Widget build(BuildContext context) {
    return Common.scaffold(
      this.title,
      Container(
        child: const Text(
          'Hello world',
          style: TextStyle(color: Colors.red),
        ),
        padding: const EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 50.0),
        margin: const EdgeInsets.all(100.0),
        width: 200,
        height: 100,
        transform: Matrix4.rotationZ(0.5),
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(color: Colors.black, width: 3),
          borderRadius: const BorderRadius.all(Radius.circular(18)),
          boxShadow: const [
            BoxShadow(blurRadius: 5),
          ],
        ),
      ),
    );
  }
}

class SafeAreaEx01 extends StatelessWidget {
  final String title;

  SafeAreaEx01(this.title);

  @override
  // Widget build(BuildContext context) {
  //   return Common.scaffold(this.title, Text('Hello World'));
  // }
  Widget build(BuildContext context) {
    return Common.scaffold(
      this.title,
      SafeArea(child: Text('Hello World')),
    );
  }
}

class CenterEx01 extends StatelessWidget {
  final String title;

  CenterEx01(this.title);

  @override
  Widget build(BuildContext context) {
    return Common.scaffold(
      this.title,
      Center(child: Text('Hello World')),
    );
  }
}

class PaddingEx01 extends StatelessWidget {
  final String title;

  PaddingEx01(this.title);

  @override
  Widget build(BuildContext context) {
    return Common.scaffold(
      this.title,
      Padding(
        child: Text('Hello World'),
        padding: EdgeInsets.fromLTRB(100, 300, 10, 40),
      ),
    );
  }
}

class ColumnEx01 extends StatelessWidget {
  final String title;

  ColumnEx01(this.title);

  @override
  Widget build(BuildContext context) {
    return Common.scaffold(
      this.title,
      Column(
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

class ColumnEx02 extends StatelessWidget {
  final String title;

  ColumnEx02(this.title);

  @override
  Widget build(BuildContext context) {
    return Common.scaffold(
      this.title,
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

class ColumnEx03 extends StatelessWidget {
  final String title;

  ColumnEx03(this.title);

  @override
  Widget build(BuildContext context) {
    return Common.scaffold(
      this.title,
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

class ColumnEx04 extends StatelessWidget {
  final String title;

  ColumnEx04(this.title);

  @override
  Widget build(BuildContext context) {
    return Common.scaffold(
      this.title,
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

class RowEx01 extends StatelessWidget {
  final String title;

  RowEx01(this.title);

  @override
  Widget build(BuildContext context) {
    return Common.scaffold(
      this.title,
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

class RowEx02 extends StatelessWidget {
  final String title;

  RowEx02(this.title);

  @override
  Widget build(BuildContext context) {
    return Common.scaffold(
      this.title,
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

class RowEx03 extends StatelessWidget {
  final String title;

  RowEx03(this.title);

  @override
  Widget build(BuildContext context) {
    return Common.scaffold(
      this.title,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

class ExpandedEx01 extends StatelessWidget {
  final String title;

  ExpandedEx01(this.title);

  @override
  Widget build(BuildContext context) {
    return Common.scaffold(
      this.title,
      Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
            ),
            flex: 3,
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              color: Colors.green,
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }
}

class StackEx01 extends StatelessWidget {
  final String title;

  StackEx01(this.title);

  @override
  Widget build(BuildContext context) {
    return Common.scaffold(
      this.title,
      Stack(
        children: [
          Container(
            width: 400,
            height: 400,
            color: Colors.green,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.yellow,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}

class SizedBoxEx01 extends StatelessWidget {
  final String title;

  SizedBoxEx01(this.title);

  @override
  Widget build(BuildContext context) {
    return Common.scaffold(
      this.title,
      Column(
        children: [
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
          SizedBox(
            height: 200,
          ),
          Container(
            color: Colors.yellow,
            width: 100,
            height: 100,
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            color: Colors.green,
            width: 100,
            height: 100,
          ),
        ],
      ),
    );
  }
}
