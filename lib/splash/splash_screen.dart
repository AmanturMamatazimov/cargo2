import 'dart:async';

import 'package:cargo_app/editing/editing1.dart';
import 'package:cargo_app/views/auth/sing_in/sing_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main/main.dart';

class SplashScreen extends StatefulWidget {
  final prefs;
  const SplashScreen({Key? key, required this.prefs}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => widget.prefs.getString('userId') == null
                    ? const LoginScreen()
                    : Main())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(),
            Container(
              color: Colors.green,
            ),
            const Text(
              'Добро пожаловать в Doce ',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}