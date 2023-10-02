import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.onSignOutCalled});
  final VoidCallback onSignOutCalled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home page'),
        actions: [
          TextButton(onPressed: signOut, child: const Text('sign out'))
        ],
      ),
    );
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
    onSignOutCalled();
  }
}
