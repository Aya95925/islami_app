import 'package:flutter/material.dart';
import 'package:islami_app/ui/utils/app_assests.dart';
import 'package:islami_app/ui/utils/colors.dart';
import 'package:islami_app/ui/utils/styles.dart';
import 'package:islami_app/ui/widget/custom_text_field.dart';
import 'package:islami_app/ui/widget/most_recent.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  List<Widget> page = [
    CustomQuran(),
    Center(child: Container(color: Colors.red)),
    Center(child: Container(color: Colors.black)),
    Center(child: Container(color: Appcolor.brown)),
    Center(child: Container(color: Colors.blue)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[currentIndex],
      backgroundColor: Appcolor.black,
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  Widget bottomNavigationBar() {
    return BottomNavigationBar(
      selectedItemColor: Appcolor.white,
      currentIndex: currentIndex,
      unselectedItemColor: Appcolor.black,

      onTap: (index) {
        currentIndex = index;
        setState(() {});
      },
      items: [
        buildBottomNavigationBarItem(
          AppAssests.icQuran,
          'Quran',
          currentIndex == 0,
        ),
        buildBottomNavigationBarItem(
          AppAssests.icHadeth,
          'Hadith',
          currentIndex == 1,
        ),
        buildBottomNavigationBarItem(
          AppAssests.icSebha,
          'Sebha',
          currentIndex == 2,
        ),
        buildBottomNavigationBarItem(
          AppAssests.icRadio,
          'Radio',
          currentIndex == 3,
        ),
        buildBottomNavigationBarItem(
          AppAssests.icTime,
          'Time',
          currentIndex == 4,
        ),
      ],
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
    String image,
    String label,
    bool isSelected,
  ) {
    return BottomNavigationBarItem(
      icon: isSelected
          ? Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 4),
              decoration: BoxDecoration(
                color: Appcolor.black.withAlpha(150),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ImageIcon(AssetImage(image)),
            )
          : ImageIcon(AssetImage(image)),

      label: label,
      backgroundColor: Appcolor.gold,
    );
  }
}

class CustomQuran extends StatelessWidget {
  const CustomQuran({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 28, right: 28),
            child: Image.asset(AppAssests.header),
          ),
          CustomTerxtFiels(),
          SizedBox(height: 20),
          Expanded(flex: 4, child: MostRecently()),
          Spacer(flex: 7),
        ],
      ),
    );
  }
}
