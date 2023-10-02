
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignInWithFirebaseAuthPage extends StatelessWidget {
  const SignInWithFirebaseAuthPage({super.key, required this.onSignIn});
  final ValueChanged<User> onSignIn;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: signInAnonymous, child: const Text('go anonymous'))
          ],
        ),
      ),
    );
  }

  void signInAnonymous() async{
    final userCredentials = await FirebaseAuth.instance.signInAnonymously();
    debugPrint(userCredentials.user?.uid);
    onSignIn(userCredentials.user!);
  }
}
