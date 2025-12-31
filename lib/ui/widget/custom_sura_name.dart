import 'package:flutter/material.dart';
import 'package:islami_app/model/sura_dm.dart';
import 'package:islami_app/ui/screens/sura_details_screen.dart';
import 'package:islami_app/ui/utils/app_assests.dart';
import 'package:islami_app/ui/utils/colors.dart';
import 'package:islami_app/ui/utils/styles.dart';

class CustomSuraName extends StatelessWidget {
  const CustomSuraName({super.key, required this.sura});
  final SuraDm sura;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            SuraDetailsScreen.routeName,
            arguments: sura,
          );
        },
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssests.groub),
                  fit: BoxFit.fill,
                ),
              ),
              child: Text(sura.index.toString(), style: AppStyle.white16bold),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(sura.englishName, style: AppStyle.white20Bold),
                Text(
                  '${sura.ayaCount.toString()} Verses',
                  style: AppStyle.white16bold,
                ),
              ],
            ),
            Spacer(),
            Text(sura.arabicName, style: AppStyle.white20Bold),
            Divider(color: Appcolor.white, height: 10),
          ],
        ),
      ),
    );
  }
}
