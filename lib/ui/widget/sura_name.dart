import 'package:flutter/material.dart';
import 'package:islami_app/model/sura_dm.dart';
import 'package:islami_app/ui/utils/constant.dart';
import 'package:islami_app/ui/utils/styles.dart';
import 'package:islami_app/ui/widget/custom_sura_name.dart';

class SuraName extends StatelessWidget {
  const SuraName({super.key, required this.onTap});

  final void Function(SuraDm sura) onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Sura Name', style: AppStyle.white16bold),
        const SizedBox(height: 15),
        Expanded(
          child: ListView.builder(
            itemCount: suraList.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              final sura = suraList[index];
              return CustomSuraName(suraDm: sura, onTap: () => onTap(sura));
            },
          ),
        ),
      ],
    );
  }
}
