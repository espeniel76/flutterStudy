import 'package:exercise/advanced-icon/animation_demo_screen.dart';
import 'package:exercise/advanced-icon/decoration_demo_screen.dart';
import 'package:flutter/material.dart';

class AdvancedIcon extends StatelessWidget {
  const AdvancedIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
          title: const Text(
            'Advanced Icon',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.white70,
            tabs: [Tab(text: 'Icon Transition'), Tab(text: 'Icon Decoration')],
          ),
        ),
        body: const TabBarView(children: [
          AnimationDemoScreen(),
          DecorationDemoScreen(),
        ]),
      ),
    );
  }
}
//
//
// class HomeScreen extends StatelessWidget {
//   ///Home screen of the app.
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//   }
// }
