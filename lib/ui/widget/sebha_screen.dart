import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/ui/utils/app_assests.dart';
import 'package:islami_app/ui/utils/styles.dart';

class SebhaScreen extends StatefulWidget {
  const SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  double rotationAngle = 0;
  int counter = 0;
  int zekrIndex = 0;
  int allCounter = 0;

  final List<String> azkar = ['سبحان الله', 'الحمد لله', 'الله أكبر'];

  void onTasbeehTap() {
    HapticFeedback.mediumImpact();
    setState(() {
      counter++;
      allCounter++;
      rotationAngle += (2 * 3.1415926535) / 120;

      if (counter == 100) {
        counter = 0;
        zekrIndex = (zekrIndex + 1) % azkar.length;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssests.sebha),
          fit: BoxFit.fill,
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssests.gradient),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Image.asset(AppAssests.header),
            const Spacer(),
            Text(
              'سَبِّحِ اسْمَ رَبِّكَ الأعلى',
              style: AppStyle.white36bold,
              textAlign: TextAlign.center,
            ),

            GestureDetector(
              onTap: onTasbeehTap,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image.asset(AppAssests.mask, height: 90),
                  Padding(
                    padding: const EdgeInsets.only(top: 65),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Transform.rotate(
                          angle: rotationAngle,
                          child: Image.asset(
                            AppAssests.sebhaBody,
                            width: MediaQuery.of(context).size.width * 0.75,
                          ),
                        ),

                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              azkar[zekrIndex],
                              style: AppStyle.white36bold.copyWith(
                                fontSize: 30,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text('$counter', style: AppStyle.white36bold),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const Spacer(),
            Text(
              'All Counter : $allCounter',
              style: AppStyle.white20Bold.copyWith(fontSize: 28),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
