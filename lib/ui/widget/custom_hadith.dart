import 'package:flutter/material.dart';
import 'package:islami_app/ui/utils/app_assests.dart';

class CustomHadith extends StatelessWidget {
  const CustomHadith({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssests.hadithBg),
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55),
              child: Image.asset(AppAssests.header),
            ),
          ],
        ),
      ),
    );
  }
}
