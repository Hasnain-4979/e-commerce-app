import 'package:an_e_commerce_app/Screens/HomeScreen/my_home_page.dart';
import 'package:an_e_commerce_app/services/splash_service.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashService splashService = SplashService();

  @override
  void initState() {
    super.initState();
    splashService.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
                );
              },
              child: Text('e-commerce', style: TextStyle(fontSize: 32)),
        ),
      ),
    );
  }
}
