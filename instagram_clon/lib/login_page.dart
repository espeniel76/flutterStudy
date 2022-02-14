import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'tab_page.dart';

// 폰트: https://lingojam.com/FontsForInstagram
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final GoogleSignIn _googleSignIn = GoogleSignIn();
  // final FirebaseAuth _auth = FirebaseAuth.instance; // singleton

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Instagram Clon', style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold)),
            Container(
              margin: const EdgeInsets.all(20.0),
            ),
            SignInButton(
              Buttons.Google,
              onPressed: () {
                // await 로 받을 수 없다. 상위에서 async 가 붙으므로
                _handleSignIn().then((user) {
                  print(user);
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TabPage(user)));
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  /**
   * google, firebase login 비동기
   */
  Future<User> _handleSignIn() async {
    await Firebase.initializeApp();

    final GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email'
      ]
    );
    final FirebaseAuth _auth = FirebaseAuth.instance; // singleton

    final GoogleSignInAccount? account = await _googleSignIn.signIn();
    final GoogleSignInAuthentication authentication = await account!.authentication;
    final OAuthCredential credential = GoogleAuthProvider.credential(idToken: authentication.idToken, accessToken: authentication.accessToken);

    final UserCredential authResult = await _auth.signInWithCredential(credential);
    final User? user = authResult.user;

    return user!;
  }
}
