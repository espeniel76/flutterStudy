import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final textEditingController = TextEditingController();

  final ImagePicker _picker = ImagePicker();
  XFile? _imageFile;
  // PickedFile? _imageFile;

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.send),
          )
        ],
      ),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: _getImage,
        child: Icon(Icons.add_a_photo),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        _imageFile == null ? Text('No Image') : Image.file(File(_imageFile!.path)),
        TextField(
          decoration: InputDecoration(hintText: '내용을 입력하세요'),
          controller: textEditingController,
        )
      ],
    );
  }

  void _getImage() async {
    var pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    // var pickedFile = await _picker.getImage(source: ImageSource.gallery);
    setState(() {
      _imageFile = pickedFile;
    });
  }
}
