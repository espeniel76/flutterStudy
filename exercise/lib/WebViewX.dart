import 'package:exercise/webview_page2.dart';
import 'package:flutter/material.dart';

import '../webview_page.dart';

class WebViewX extends StatelessWidget {
  const WebViewX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WebViewX Example App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WebViewXPage2(),
    );
  }
}
