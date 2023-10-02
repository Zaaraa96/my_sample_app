import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_sample_app/sign_in_with_firebase_auth.dart';

import 'home_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  User? user;

  @override
  Widget build(BuildContext context) {
    if(user == null) {
      return  SignInWithFirebaseAuthPage(onSignIn: onSignIn,);
    }
    return HomePage(onSignOutCalled: onSignOutCalled,);
  }

  void onSignIn(User value) {
    setState(() {
      user = value;
    });
  }
  void onSignOutCalled(){
    setState(() {
      user = null;
    });
  }
}
