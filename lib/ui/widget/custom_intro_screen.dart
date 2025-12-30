import 'package:flutter/material.dart';
import 'package:islami_app/model/introduction.dart';
import 'package:islami_app/ui/utils/styles.dart';

class CustomIntroScreen extends StatelessWidget {
  const CustomIntroScreen({super.key, required this.introduction});
  final Introduction introduction;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 48, right: 48),
            child: Image.asset(introduction.headerImg),
          ),
          Image.asset(introduction.centerImh),

          Text(introduction.title, style: AppStyle.gold24Bold),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              introduction.subTitle ?? '',
              textAlign: TextAlign.center,
              style: AppStyle.gold20Bold,
            ),
          ),
        ],
      ),
    );
  }
}
