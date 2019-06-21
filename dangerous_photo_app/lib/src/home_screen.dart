import 'package:dangerous_photo_app/src/purchase_photo_screen.dart';
import 'package:dangerous_photo_app/src/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'dangerous_photo_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: HomeScreen(),
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FirebaseUser user;

  getCurrentUser() async {
    user = await FirebaseAuth.instance.currentUser();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return user == null ? SignInScreen() : PurchasePhotoScreen();
  }
}
