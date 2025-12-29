import 'package:flutter/material.dart';
import 'package:islami_app/ui/utils/app_assests.dart';
import 'package:islami_app/ui/widget/custom_text_field.dart';
import 'package:islami_app/ui/widget/most_recent.dart';
import 'package:islami_app/ui/widget/sura_name.dart';

class CustomQuran extends StatelessWidget {
  const CustomQuran({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 28, right: 28),
            child: Image.asset(AppAssests.header),
          ),
          CustomTerxtFiels(),
          SizedBox(height: 20),
          Expanded(flex: 4, child: MostRecently()),
          SizedBox(height: 10),
          Expanded(flex: 7, child: SuraName()),
        ],
      ),
    );
  }
}
