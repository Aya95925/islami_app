import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/model/sura_dm.dart';
import 'package:islami_app/ui/utils/app_assests.dart';
import 'package:islami_app/ui/utils/colors.dart';
import 'package:islami_app/ui/utils/styles.dart';

class SuraDetails extends StatefulWidget {
  const SuraDetails({super.key, required this.suraDm});
  final SuraDm suraDm;

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  String suraContent = '';
  @override
  void initState() {
    super.initState();
    buildSura();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Appcolor.gold),
        title: Text(widget.suraDm.englishName, style: AppStyle.gold20Bold),
        backgroundColor: Appcolor.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(AppAssests.imgLeftCorner),
                Text(widget.suraDm.arabicName, style: AppStyle.gold24Bold),
                Image.asset(AppAssests.imgRightCorner),
              ],
            ),
            SizedBox(height: 3),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  suraContent,
                  style: AppStyle.gold20Bold.copyWith(fontSize: 24),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Align(
              alignment: AlignmentGeometry.bottomCenter,
              child: Image.asset(AppAssests.maskGroub),
            ),
          ],
        ),
      ),
    );
  }

  void buildSura() async {
    String filePath = 'assets/files/quran/${widget.suraDm.index}.txt';
    filePath = filePath.trim();
    suraContent = await rootBundle.loadString(filePath);
    suraContent = suraContent.trim();
    List<String> suraLines = suraContent.split('\n');
    for (int i = 0; i < suraLines.length; i++) {
      suraLines[i] += ' [ ${i + 1} ] ';
    }
    suraContent = suraLines.join();
    setState(() {});
  }
}
