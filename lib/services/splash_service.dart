import 'dart:async';
import 'package:an_e_commerce_app/Screens/HomeScreen/my_home_page.dart';
import 'package:an_e_commerce_app/Screens/auth/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashService {
  void isLogin(BuildContext context) {
    // to provide the Firebase Auth instance
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;

    if (user != null) {
      Timer(
        Duration(seconds: 3),
        () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage()),
        ),
      );
    } else {
      Timer(
        Duration(milliseconds: 100),
        () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        ),
      );
    }
  }
}
