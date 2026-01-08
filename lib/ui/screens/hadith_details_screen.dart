import 'package:flutter/material.dart';
import 'package:islami_app/model/hadith_dm.dart';
import 'package:islami_app/ui/widget/hadith_source_details.dart';

class HadithDetailsScreen extends StatefulWidget {
  const HadithDetailsScreen({super.key});
  static const routeName = 'HadithSourceDetails';

  @override
  State<HadithDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<HadithDetailsScreen> {
  late HadithDm hadithDm;

  @override
  Widget build(BuildContext context) {
    hadithDm = ModalRoute.of(context)!.settings.arguments as HadithDm;
    return HadithSourceDetails(hadith: hadithDm);
  }
}
