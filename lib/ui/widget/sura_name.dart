import 'package:flutter/material.dart';
import 'package:islami_app/ui/utils/styles.dart';
import 'package:islami_app/ui/widget/custom_sura_name.dart';

class SuraName extends StatelessWidget {
  const SuraName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Sura Name', style: AppStyle.white16bold),
        SizedBox(height: 15),
        Expanded(
          child: ListView.builder(
            itemCount: 15,
            padding: EdgeInsets.all(0),
            itemBuilder: (context, index) {
              return CustomSuraName();
            },
          ),
        ),
      ],
    );
  }
}
