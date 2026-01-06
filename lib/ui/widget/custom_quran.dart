import 'package:flutter/material.dart';
import 'package:islami_app/model/sura_dm.dart';
import 'package:islami_app/ui/screens/sura_details_screen.dart';
import 'package:islami_app/ui/utils/app_assests.dart';
import 'package:islami_app/ui/utils/constant.dart';
import 'package:islami_app/ui/widget/custom_text_field.dart';
import 'package:islami_app/ui/widget/most_recent.dart';
import 'package:islami_app/ui/widget/sura_name.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomQuran extends StatefulWidget {
  const CustomQuran({super.key});

  @override
  State<CustomQuran> createState() => _CustomQuranState();
}

class _CustomQuranState extends State<CustomQuran> {
  List<SuraDm> mostRecentSura = [];

  @override
  void initState() {
    super.initState();
    loadSuraFromSharedPrefrence();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 28, right: 28),
            child: Image.asset(AppAssests.header),
          ),
          CustomTerxtFiels(),
          const SizedBox(height: 20),
          Expanded(flex: 4, child: MostRecently(mostRecent: mostRecentSura)),
          const SizedBox(height: 10),
          Expanded(
            flex: 7,
            child: SuraName(
              onTap: (SuraDm sura) async {
                await saveSuraInSharedPrefrance(sura);

                await Navigator.pushNamed(
                  context,
                  SuraDetailsScreen.routeName,
                  arguments: sura,
                );

                loadSuraFromSharedPrefrence();
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> saveSuraInSharedPrefrance(SuraDm sura) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    List<String> oldMostRecent = pref.getStringList('mostRecentSura') ?? [];

    // oldMostRecent.remove(sura.index.toString());
    oldMostRecent.insert(0, sura.index.toString());

    await pref.setStringList('mostRecentSura', oldMostRecent);
  }

  void loadSuraFromSharedPrefrence() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String>? suraIndex = prefs.getStringList('mostRecentSura');

    if (suraIndex == null) return;

    mostRecentSura = suraIndex.map((e) {
      final index = int.parse(e);
      return suraList[index - 1];
    }).toList();

    setState(() {});
  }
}
