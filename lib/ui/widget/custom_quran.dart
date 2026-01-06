import 'package:flutter/material.dart';
import 'package:islami_app/model/sura_dm.dart';
import 'package:islami_app/ui/screens/sura_details_screen.dart';
import 'package:islami_app/ui/utils/app_assests.dart';
import 'package:islami_app/ui/widget/custom_text_field.dart';
import 'package:islami_app/ui/widget/most_recent.dart';
import 'package:islami_app/ui/widget/sura_name.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:islami_app/ui/utils/constant.dart';

class CustomQuran extends StatefulWidget {
  const CustomQuran({super.key});

  @override
  State<CustomQuran> createState() => _CustomQuranState();
}

class _CustomQuranState extends State<CustomQuran> {
  List<SuraDm> mostRecentSura = [];
  List<SuraDm> filteredSura = suraList;

  @override
  void initState() {
    super.initState();
    loadSuraFromSharedPrefrence();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Image.asset(AppAssests.header),
            ),
            const SizedBox(height: 10),
            CustomTerxtFiels(
              onChanged: (query) {
                if (query.trim().isEmpty) {
                  filteredSura = suraList;
                }
                filteredSura = suraList.where((sura) {
                  return sura.englishName.toLowerCase().contains(
                        query.toLowerCase(),
                      ) ||
                      sura.arabicName.contains(query);
                }).toList();
                setState(() {});
              },
            ),
            const SizedBox(height: 20),

            if (mostRecentSura.isNotEmpty)
              SizedBox(
                height: MediaQuery.of(context).size.height * .2,
                child: MostRecently(mostRecent: mostRecentSura),
              ),

            const SizedBox(height: 10),
            SuraName(
              onTap: (SuraDm sura) async {
                await saveSuraInSharedPrefrance(sura);
                await Navigator.pushNamed(
                  context,
                  SuraDetailsScreen.routeName,
                  arguments: sura,
                );
                loadSuraFromSharedPrefrence();
              },
              suradm: filteredSura,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> saveSuraInSharedPrefrance(SuraDm sura) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    List<String> oldMostRecent = pref.getStringList('mostRecentSura') ?? [];
    oldMostRecent.remove(sura.index.toString()); // إزالة التكرار
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
