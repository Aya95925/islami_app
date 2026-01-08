import 'package:flutter/material.dart';
import 'package:islami_app/model/hadith_dm.dart';
import 'package:islami_app/ui/utils/app_assests.dart';
import 'package:islami_app/ui/utils/colors.dart';
import 'package:islami_app/ui/utils/styles.dart';

class HadithSourceDetails extends StatelessWidget {
  const HadithSourceDetails({super.key, required this.hadith});
  final HadithDm hadith;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Appcolor.gold),
        title: Text(
          'Hadith ${hadith.hadithNumber!.toString()}',
          style: AppStyle.gold20Bold,
        ),
        backgroundColor: Appcolor.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(AppAssests.imgLeftCorner),
                Text('${hadith.title}', style: AppStyle.gold24Bold),
                Image.asset(AppAssests.imgRightCorner),
              ],
            ),
            SizedBox(height: 3),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  '${hadith.content}',
                  style: AppStyle.gold20Bold.copyWith(fontSize: 24),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Align(
              alignment: AlignmentGeometry.bottomCenter,
              child: Image.asset(AppAssests.maskGroub),
            ),
          ],
        ),
      ),
    );
  }
}
