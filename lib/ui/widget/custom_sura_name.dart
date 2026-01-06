import 'package:flutter/material.dart';
import 'package:islami_app/model/sura_dm.dart';
import 'package:islami_app/ui/utils/app_assests.dart';
import 'package:islami_app/ui/utils/styles.dart';

class CustomSuraName extends StatelessWidget {
  const CustomSuraName({super.key, required this.suraDm, required this.onTap});

  final SuraDm suraDm;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(18),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssests.groub),
                  fit: BoxFit.fill,
                ),
              ),
              child: Text(suraDm.index.toString(), style: AppStyle.white16bold),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(suraDm.englishName, style: AppStyle.white20Bold),
                Text('${suraDm.ayaCount} Verses', style: AppStyle.white16bold),
              ],
            ),
            const Spacer(),
            Text(suraDm.arabicName, style: AppStyle.white20Bold),
          ],
        ),
      ),
    );
  }
}
