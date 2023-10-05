import 'dart:async';

import 'package:flutter/material.dart';
import 'package:guardiian/screens/permission.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const PermissionPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/images/splash_img.png',
            height: MediaQuery.of(context).size.height * 0.35,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/splash_name.png',
              width: MediaQuery.of(context).size.width * 0.7,
            ),
          )
        ],
      ),
    );
  }
}
