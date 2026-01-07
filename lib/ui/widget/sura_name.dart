import 'package:flutter/material.dart';
import 'package:islami_app/model/sura_dm.dart';
import 'package:islami_app/ui/utils/styles.dart';
import 'package:islami_app/ui/widget/custom_sura_name.dart';

class SuraName extends StatelessWidget {
  const SuraName({super.key, required this.onTap, required this.suradm});
  final List<SuraDm> suradm;
  final void Function(SuraDm sura) onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Sura Name', style: AppStyle.white16bold),
        const SizedBox(height: 15),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: suradm.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            final sura = suradm[index];
            return CustomSuraName(suraDm: sura, onTap: () => onTap(sura));
          },
          separatorBuilder: (context, index) =>
              const Divider(indent: 50, endIndent: 50),
        ),
      ],
    );
  }
}
