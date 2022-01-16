import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/MyAnimatedContainer.dart';
import 'package:flutter_tutorial/MyAnimatedOpacity.dart';
import 'package:flutter_tutorial/MyDrawer.dart';
import 'package:flutter_tutorial/MyFormValidation.dart';
import 'package:flutter_tutorial/MyGridView.dart';
import 'package:flutter_tutorial/MyOrientationBuilder.dart';
import 'package:flutter_tutorial/MySnackBar.dart';
import 'package:flutter_tutorial/MySwipeToDismiss.dart';
import 'package:flutter_tutorial/MyTabController.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // brightness: Brightness.dark,
        primarySwatch: Colors.purple,
        accentColor: Colors.yellow,
      ),
      // home: const MyAnimatedContainer(),
      // home: MyAnimatedOpacity(),
      // home: const MyDrawer(),
      // home: MySnackBar(),
      // home: MyGridView(),
      // home: MyOrientationBuilder(),
      // home: MyTabController(),
      // home: MyFormValidation(),
      home: MySwipeToDismissState(),
    );
  }
}
