import 'package:flutter/material.dart';
import 'package:islami_app/model/introduction.dart';
import 'package:islami_app/ui/utils/colors.dart';
import 'package:islami_app/ui/utils/styles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomRowContainSmoothPageIndecator extends StatelessWidget {
  const CustomRowContainSmoothPageIndecator({
    super.key,
    required this.controller,
    required this.intro,
    required this.currentIndex,
    required this.onTap,
  });

  final PageController controller;
  final List<Introduction> intro;
  final int currentIndex;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        (currentIndex == 0)
            ? SizedBox()
            : InkWell(
                onTap: () {
                  if (currentIndex > 0) {
                    controller.animateToPage(
                      currentIndex - 1,
                      duration: Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: Text('Back', style: AppStyle.gold16Bold),
              ),
        SmoothPageIndicator(
          controller: controller,
          count: intro.length,
          onDotClicked: (index) {},
          effect: const WormEffect(
            dotHeight: 9,
            dotWidth: 9,
            type: WormType.thinUnderground,
            activeDotColor: Appcolor.gold,
          ),
        ),
        InkWell(
          onTap: onTap,

          child: Text('Next', style: AppStyle.gold16Bold),
        ),
      ],
    );
  }
}
