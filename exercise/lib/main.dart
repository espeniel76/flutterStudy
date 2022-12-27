import 'package:exercise/ActiveTextTest.dart';
import 'package:exercise/AdvancedIcon.dart';
import 'package:exercise/AnimatedContainerTest.dart';
import 'package:exercise/AnimatedFaded.dart';
import 'package:exercise/ChangeColor.dart';
import 'package:exercise/CheckboxListTile.dart';
import 'package:exercise/DynamicFocus.dart';
import 'package:exercise/EnsureVisibleTest.dart';
import 'package:exercise/GlobalKeyTest.dart';
import 'package:exercise/HttpTest.dart';
import 'package:exercise/LocalStorageTest.dart';
import 'package:exercise/MarqueeTest.dart';
import 'package:exercise/MyFormValidation.dart';
import 'package:exercise/OpenBrowser.dart';
import 'package:exercise/PageViewTest.dart';
import 'package:exercise/SignInDemo.dart';
import 'package:exercise/SlideAnimationTest.dart';
import 'package:exercise/SlidingUpPanelTest.dart';
import 'package:exercise/SvgTest.dart';
import 'package:exercise/SyncfusionSliderTest.dart';
import 'package:exercise/TTSTest.dart';
import 'package:exercise/TabBarTest.dart';
import 'package:exercise/TransitionTest.dart';
import 'package:exercise/VolumeControlTest.dart';
import 'package:exercise/WebViewX.dart';
import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const HelloPage(),
    );
  }
}

class HelloPage extends StatefulWidget {
  const HelloPage({Key? key}) : super(key: key);

  @override
  State<HelloPage> createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('샘플')),
      body: SingleChildScrollView(
        child: Center(
          child: Wrap(
            children: [
              _push(context, '폼 벨리데이션', const MyFormValidation()),
              _push(context, '다이나믹포커스', const DynamicFocus()),
              _push(context, '체인지 컬러', const ChangeColor()),
              _push(context, '페이지전환', const TransitionTest()),
              _push(context, 'TTS 테스트', const TTSTest()),
              _push(context, '버블페인터', const CustomPaint()),
              _push(context, 'SVG', SvgTest()),
              _push(context, 'Page View', PageViewTest()),
              _push(context, 'REST Test', const RestTest()),
              _push(context, 'Marquee', const MarqueeTest()),
              _push(context, 'Advanced Icon', const AdvancedIcon()),
              _push(context, 'Animated Container', const AnimatedContainerTest()),
              _push(context, 'Animated Faded', const AnimatedFaded()),
              _push(context, 'Google SignIn', const SignInDemo()),
              _push(context, 'Local Storage', const LocalStorageTest()),
              _push(context, 'Syncfusion Slider', const SyncfusionSliderTest()),
              _push(context, 'Active Text test', const ActiveTextTest()),
              _push(context, 'VolumeControl', const VolumeControlTest()),
              _push(context, 'Slide Test', Page1()),
              _push(context, 'Tab bar', TabBarTest()),
              _push(context, 'Sliding Up', const SlidingUpPanelTest()),
              _push(context, 'Checkbox Tile', const CheckboxListTileTest()),
              _push(context, 'Sections', ArticlePage(sections: sections)),
              _push(context, 'GlobalKeyTest', const GlobalKeyTest()),
              _push(context, 'Browser', const OpenBrowser(title: "test")),
              _push(context, 'WebViewX', const WebViewX()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _push(BuildContext context, String title, Widget widget) {
    return Container(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
        },
        child: Text(title),
      ),
    );
  }
}
