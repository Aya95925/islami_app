import 'package:flutter/material.dart';
import 'package:islami_app/model/hadith_dm.dart';
import 'package:islami_app/ui/utils/app_assests.dart';
import 'package:islami_app/ui/utils/colors.dart';
import 'package:islami_app/ui/utils/styles.dart';

class CustomHadithBodyDetails extends StatelessWidget {
  const CustomHadithBodyDetails({super.key, required this.hadithDm});
  final HadithDm hadithDm;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Appcolor.gold,
        image: DecorationImage(
          image: AssetImage(AppAssests.quranImg),
          colorFilter: ColorFilter.mode(
            Appcolor.black.withAlpha(80),
            BlendMode.srcATop,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      AppAssests.imgLeftCorner,
                      color: Appcolor.black,
                    ),

                    Image.asset(
                      AppAssests.imgRightCorner,
                      color: Appcolor.black,
                    ),
                  ],
                ),
                Spacer(),
                Image.asset(AppAssests.maskGroub, color: Appcolor.black),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Center(
                    child: Text(hadithDm.title, style: AppStyle.black24Bold),
                  ),
                ),
                SizedBox(height: 28),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SingleChildScrollView(
                      child: Center(
                        child: Text(
                          hadithDm.content,
                          overflow: TextOverflow.clip,
                          style: AppStyle.black16Bold.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
