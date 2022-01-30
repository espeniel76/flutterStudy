import 'package:flutter/material.dart';

class PageViewTest extends StatelessWidget {
  // const PageViewTest({Key? key}) : super(key: key);

  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {

    return PageView(
      controller: controller,
      children: [
        Container(color: Colors.red),
        Container(color: Colors.green),
        Container(color: Colors.blue),
      ],
    );
  }
}
