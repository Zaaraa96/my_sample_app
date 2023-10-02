
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignInWithFirebaseAuthPage extends StatelessWidget {
  const SignInWithFirebaseAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
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
  }
}
