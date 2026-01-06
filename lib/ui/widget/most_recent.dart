import 'package:flutter/material.dart';
import 'package:islami_app/ui/utils/styles.dart';
import 'package:islami_app/ui/widget/custom_container_most_recent.dart';

class MostRecently extends StatelessWidget {
  const MostRecently({super.key, required this.mostRecent});
  // final SuraDm suraDm;
  final List mostRecent;
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
            itemCount: mostRecent.length,
            itemBuilder: (context, index) {
              return CustomContainerMostRecent(suradm: mostRecent[index]);
            },
          ),
        ),
      ],
    );
  }
}
