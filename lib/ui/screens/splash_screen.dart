import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/ui/screens/home_screens.dart';
import 'package:islami_app/ui/utils/app_assests.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const routeName = 'splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;
  @override
  void initState() {
    super.initState();
    timer = Timer(Duration(seconds: 1), () {
      Navigator.pushNamed(context, HomeScreens.homeScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        AppAssests.splash,
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
