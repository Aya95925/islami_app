import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/ui/screens/home_screens.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:islami_app/ui/screens/intro_screen.dart'; // Your main home screen
import 'package:islami_app/ui/utils/app_assests.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String routeName = 'splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;

  @override
  void initState() {
    super.initState();

    timer = Timer(const Duration(seconds: 3), () {
      navigate();
    });
  }

  void navigate() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool hasSeenIntro = prefs.getBool('hasSeenIntro') ?? false;
    if (!mounted) return;
    if (hasSeenIntro) {
      Navigator.pushReplacementNamed(context, HomeScreens.homeScreen);
    } else {
      Navigator.pushReplacementNamed(context, IntroScreen.routeName);
    }
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
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
