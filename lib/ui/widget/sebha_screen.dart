import 'package:flutter/material.dart';
import 'package:islami_app/ui/utils/app_assests.dart';
import 'package:islami_app/ui/utils/styles.dart';

class SebhaScreen extends StatelessWidget {
  const SebhaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssests.sebha),
          fit: BoxFit.fill,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssests.gradient),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Image.asset(AppAssests.header),
              Text('سَبِّحِ اسْمَ رَبِّكَ الأعلى', style: AppStyle.white36bold),
              Image.asset(AppAssests.sebhapng),
            ],
          ),
        ),
      ),
    );
  }
}
