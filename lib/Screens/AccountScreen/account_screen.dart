import 'package:an_e_commerce_app/Screens/HomeScreen/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
        actions: [
          IconButton(
            onPressed: () {
              auth
                  .signOut()
                  .then(
                    (value) => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SplashScreen()),
                    ),
                  )
                  .onError((error, stackTrace) => () {});
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(children: [Center(child: Text("This is Account Screen"))]),
    );
  }
}
