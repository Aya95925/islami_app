import 'package:flutter/material.dart';
import 'package:islami_app/ui/screens/home_screens.dart';
import 'package:islami_app/ui/screens/splash_screen.dart';

void main() {
  runApp(const IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreens.homeScreen: (_) => HomeScreens(),
      },
      initialRoute: SplashScreen.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}
