import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Instagram Clon',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Text(
                  'Instagram에 오신 것을 환영합니다.',
                  style: TextStyle(fontSize: 24.0),
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                const Text('사진과 동영상을 보려면 팔로우하세요.'),
                const Padding(padding: EdgeInsets.all(16.0)),
                SizedBox(
                  width: 260.0,
                  child: Card(
                    child: Column(
                      children: [
                        const Padding(padding: EdgeInsets.all(4.0)),
                        const SizedBox(
                          width: 80.0,
                          height: 80.0,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://media.vlpt.us/images/yhdc/post/4923aaf3-91b5-4f50-b755-2d93276b836d/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpeg',
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(8.0)),
                        const Text('이메일 주소'),
                        const Padding(padding: EdgeInsets.all(8.0)),
                        const Text('이름'),
                        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                          SizedBox(
                            width: 70.0,
                            height: 70.0,
                            child: Image.network(
                              'https://media.vlpt.us/images/yhdc/post/4923aaf3-91b5-4f50-b755-2d93276b836d/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpeg',
                              fit: BoxFit.contain,
                            ),
                          ),
                          const Padding(padding: EdgeInsets.all(1.0)),
                          SizedBox(
                            width: 70.0,
                            height: 70.0,
                            child: Image.network(
                              'https://media.vlpt.us/images/yhdc/post/4923aaf3-91b5-4f50-b755-2d93276b836d/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpeg',
                              fit: BoxFit.contain,
                            ),
                          ),
                          const Padding(padding: EdgeInsets.all(1.0)),
                          SizedBox(
                            width: 70.0,
                            height: 70.0,
                            child: Image.network(
                              'https://media.vlpt.us/images/yhdc/post/4923aaf3-91b5-4f50-b755-2d93276b836d/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpeg',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ]),
                        const Padding(padding: EdgeInsets.all(4.0)),
                        const Text('Facebook 친구'),
                        const Padding(padding: EdgeInsets.all(4.0)),
                        RaisedButton(
                          child: const Text('팔로우'),
                          onPressed: () {},
                        ),
                        const Padding(padding: EdgeInsets.all(4.0)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
