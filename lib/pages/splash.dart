import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rms/pages/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
          (route) => false);
    });

    return Scaffold(
      backgroundColor: const Color(0xFF1a0a80),
      body: Center(
        child: Image.asset(
          'images/logo.png',
          width: 280,
        ),
      ),
    );
  }
}
