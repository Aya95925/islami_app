import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/model/hadith_dm.dart';
import 'package:islami_app/ui/utils/app_assests.dart';
import 'package:islami_app/ui/widget/custom_hadith_body_details.dart';

class CustomHadithBody extends StatelessWidget {
  const CustomHadithBody({
    super.key,
    required this.hadithDm,
    required this.onTap,
  });

  final List<HadithDm> hadithDm;
  final void Function(HadithDm hadith)? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 55),
          child: Image.asset(AppAssests.header),
        ),
        Expanded(
          child: CarouselSlider.builder(
            options: CarouselOptions(
              height: double.infinity,
              enableInfiniteScroll: false,
              autoPlay: false,
              aspectRatio: 0.4,
              enlargeCenterPage: true,
            ),
            itemCount: hadithDm.length,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return InkWell(
                onTap: () {
                  onTap?.call(hadithDm[index]);
                },
                child: CustomHadithBodyDetails(hadithDm: hadithDm[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
