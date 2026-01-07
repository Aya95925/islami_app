import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/model/hadith_dm.dart';
import 'package:islami_app/ui/utils/app_assests.dart';
import 'package:islami_app/ui/widget/custom_hadith_body.dart';

class CustomHadith extends StatefulWidget {
  const CustomHadith({super.key});

  @override
  State<CustomHadith> createState() => _CustomHadithState();
}

class _CustomHadithState extends State<CustomHadith> {
  List<HadithDm> hadithList = [];
  @override
  void initState() {
    super.initState();
    loadHadith();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssests.hadithBg),
          fit: BoxFit.fill,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssests.gradient),
            fit: BoxFit.fill,
          ),
        ),
        child: CustomHadithBody(hadithDm: hadithList),
      ),
    );
  }

  void loadHadith() async {
    String filePath = 'assets/files/hadith/ahadeth.txt';
    String hadithContent = await rootBundle.loadString(filePath);
    List<String> tempAhadith = hadithContent.trim().split('#');
    for (int i = 0; i < tempAhadith.length; i++) {
      String hadith = tempAhadith[i].trim();
      List<String> hadithLines = hadith.split('\n');
      String title = hadithLines[0];
      // print('title$title');
      hadithLines.removeAt(0);
      String content = hadithLines.join('\n');
      // print('content$content');
      hadithList.add(HadithDm(title: title, content: content));
    }
    setState(() {});
  }
}
