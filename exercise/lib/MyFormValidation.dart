import 'package:flutter/material.dart';

class MyFormValidation extends StatefulWidget {
  const MyFormValidation({Key? key}) : super(key: key);

  @override
  _MyFormValidationState createState() => _MyFormValidationState();
}

class _MyFormValidationState extends State<MyFormValidation> {
  // body의 Form 을 나타내는 키가 된다.
  final _formKey = GlobalKey<FormState>();
  FocusNode? nameFocusNode;
  final nameController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    nameFocusNode!.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Validation'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey, // formKey와 현재 form 을 링크 시킨다.
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // validate 기능을 사용하기 위해서 TextFormField
                TextFormField(
                  validator: (String? value) {
                    if (value != null && value.isEmpty) {
                      return '공백은 허용되지 않습니다.';
                    }
                  },
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     if (_formKey.currentState!.validate()) {
                //       // valid
                //       Scaffold.of(_formKey.currentContext!).showSnackBar(
                //         const SnackBar(
                //           content: Text('처리중'),
                //         ),
                //       );
                //     }
                //   },
                //   child: Text('완료'),
                // ),
                TextField(
                  focusNode: nameFocusNode,
                  controller: nameController,
                  decoration: const InputDecoration(
                    hintText: '이름을 입력해 주세요',
                    border: InputBorder.none,
                    labelText: '이름',
                  ),
                  autofocus: true,
                ),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(nameFocusNode);
                  },
                  child: const Text('포커스'),
                ),
                ElevatedButton(
                  onPressed: () {
                    print(nameController.text);
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text(nameController.text),
                        );
                      },
                    );
                  },
                  child: const Text('TextField 값 확인'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
