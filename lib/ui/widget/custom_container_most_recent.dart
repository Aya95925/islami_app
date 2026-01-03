import 'package:flutter/material.dart';
import 'package:islami_app/model/sura_dm.dart';
import 'package:islami_app/ui/utils/app_assests.dart';
import 'package:islami_app/ui/utils/colors.dart';
import 'package:islami_app/ui/utils/styles.dart';

class CustomContainerMostRecent extends StatelessWidget {
  const CustomContainerMostRecent({super.key, required this.suradm});
  final SuraDm suradm;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.19,
      width: MediaQuery.of(context).size.width * 0.8,
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Appcolor.gold,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Al-Anbiya', style: AppStyle.black24Bold),
                Text('الأنبياء', style: AppStyle.black24Bold),
                Text('112 Verses', style: AppStyle.black14Bold),
              ],
            ),
          ),
          Image.asset(AppAssests.imageMostRecent),
        ],
      ),
    );
  }
}
