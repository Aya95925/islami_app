import 'package:flutter/material.dart';
import 'package:islami_app/ui/utils/app_assests.dart';
import 'package:islami_app/ui/utils/colors.dart';
import 'package:islami_app/ui/utils/styles.dart';

class CustomSuraName extends StatelessWidget {
  const CustomSuraName({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
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
            child: Text('114', style: AppStyle.white16bold),
          ),
          SizedBox(width: 20),
          Column(
            children: [
              Text('Al-Fatiha', style: AppStyle.white20Bold),
              Text('7 Verses  ', style: AppStyle.white16bold),
            ],
          ),
          Spacer(),
          Text('الفاتحه', style: AppStyle.white20Bold),
          Divider(color: Appcolor.white, height: 10),
        ],
      ),
    );
  }
}
