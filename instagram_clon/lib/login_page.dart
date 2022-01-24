import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({Key? key}) : super(key: key);
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Instagram Clon',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Padding(padding: EdgeInsets.all(50)),
            SignInButton(
              Buttons.Google,
              onPressed: () {
                // _handleSignIn();
              },
            ),
          ],
        ),
      ),
    );
  }

  // Future<FirebaseAuth> _handleSignIn() async {
  //   GoogleSignInAccount googleUser = _googleSignIn.signIn();
  //   GoogleSignInAuthentication googleAuth = await googleUser.authentication;
  //   FirebaseAuth user = await _auth.signInWithCredential(
  //       GoogleAuthProvider.credential(
  //           idToken: googleAuth.idToken, accessToken: googleAuth.accessToken));
  //   return user;
  // }
}
