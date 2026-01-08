import 'package:flutter/material.dart';
import 'package:islami_app/ui/screens/hadith_details_screen.dart';
import 'package:islami_app/ui/screens/home_screens.dart';
import 'package:islami_app/ui/screens/intro_screen.dart';
import 'package:islami_app/ui/screens/splash_screen.dart';
import 'package:islami_app/ui/screens/sura_details_screen.dart';
import 'package:islami_app/ui/widget/hadith_source_details.dart';

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
        IntroScreen.routeName: (_) => IntroScreen(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
        HadithDetailsScreen.routeName: (_) => HadithDetailsScreen(),
      },
      initialRoute: SplashScreen.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}
