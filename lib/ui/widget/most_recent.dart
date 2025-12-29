import 'package:flutter/material.dart';
import 'package:islami_app/ui/utils/app_assests.dart';
import 'package:islami_app/ui/utils/colors.dart';
import 'package:islami_app/ui/utils/styles.dart';

class MostRecently extends StatelessWidget {
  const MostRecently({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Most Recently', style: AppStyle.white16bold),
        SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              return CustomContainerMostRecent();
              ;
            },
          ),
        ),
      ],
    );
  }
}

class CustomContainerMostRecent extends StatelessWidget {
  const CustomContainerMostRecent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.16,
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
