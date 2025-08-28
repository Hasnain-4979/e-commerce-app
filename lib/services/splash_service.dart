import 'dart:async';

import 'package:an_e_commerce_app/Screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

class SplashService {
  void isLogin(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      ),
    );
  }
}
