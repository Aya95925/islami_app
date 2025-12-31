import 'package:flutter/material.dart';
import 'package:islami_app/model/introduction.dart';
import 'package:islami_app/ui/utils/app_assests.dart';
import 'package:islami_app/ui/utils/colors.dart';
import 'package:islami_app/ui/widget/custom_intro_screen.dart';
import 'package:islami_app/ui/widget/custom_row_contain_smooth_page_indecator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});
  static const routeName = 'intro_welcom';

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController controller = PageController();
  int currentIndex = 0;
  List<Introduction> intro = [
    Introduction(
      headerImg: AppAssests.header,
      centerImh: AppAssests.welcome,
      title: 'Welcome To Islmi App',
    ),
    Introduction(
      headerImg: AppAssests.header,
      centerImh: AppAssests.kabba,
      title: 'Welcome To Islami',
      subTitle: 'We Are Very Excited To Have You In Our Community',
    ),
    Introduction(
      headerImg: AppAssests.header,
      centerImh: AppAssests.quranImg,
      title: 'Reading the Quran',
      subTitle: 'Read, and your Lord is the Most Generous',
    ),
    Introduction(
      headerImg: AppAssests.header,
      centerImh: AppAssests.bearish,
      title: 'Bearish',
      subTitle: 'Praise the name of your Lord, the Most High',
    ),
    Introduction(
      headerImg: AppAssests.header,
      centerImh: AppAssests.holyQuranRadio,
      title: 'Holy Quran Radio',
      subTitle:
          'You can listen to the Holy Quran Radio through the application for free and easily',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.black,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 22),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                physics: NeverScrollableScrollPhysics(),
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                controller: controller,
                itemCount: intro.length,
                itemBuilder: (context, index) {
                  return CustomIntroScreen(introduction: intro[index]);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomRowContainSmoothPageIndecator(
                controller: controller,
                intro: intro,
                currentIndex: currentIndex,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
