import 'package:flutter/material.dart';

class DynamicFocus extends StatelessWidget {

  // 얘는 뭐며, 왜 있어야 하는가?
  const DynamicFocus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int listLength = 4;

    // listLength 만큼 FocusNode 만들고
    List<FocusNode> _focusNodes =
        List<FocusNode>.generate(listLength, (int index) => FocusNode());

    // listLength 만큼 TextField 만든다.
    List<Widget> textFields = List<Widget>.generate(
      listLength,
      (int index) => TextField(
        controller: TextEditingController(),
        focusNode: _focusNodes[index],
        onSubmitted: (String value) {
          if (index < listLength) {
            _focusNodes[index + 1].requestFocus();
          }
        },
      ),
    );

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: textFields,
      ),
    );
  }
}
