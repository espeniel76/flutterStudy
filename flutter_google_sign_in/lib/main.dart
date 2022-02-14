import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GoogleSignInAccount? _currentUser;

  @override
  void initState() {
    _googleSignIn.onCurrentUserChanged.listen((account) {
      setState(() {
        _currentUser = account;
      });
    });
    _googleSignIn.signInSilently();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Flutter Google Sign in')),
        body: Container(
          alignment: Alignment.center,
          child: _buildWidget(),
        ));
  }

  Widget _buildWidget() {
    // bool isSignedIn = false;

    GoogleSignInAccount? user = _currentUser;

    if (user != null) {
      return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ListTile(
              leading: GoogleUserCircleAvatar(identity: user),
              title: Text(user.displayName ?? ''),
              subtitle: Text(user.email),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Signed in successfully',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: signOut,
              child: const Text('Sign out'),
            )
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'You are not signed in',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: signIn,
              child: const Text('Sign in'),
            ),
          ],
        ),
      );
    }
  }

  void signOut() {
    _googleSignIn.disconnect();
  }

  Future<void> signIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (e) {
      print('Error signin in $e');
    }
  }
}
