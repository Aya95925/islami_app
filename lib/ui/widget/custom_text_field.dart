import 'package:flutter/material.dart';
import 'package:islami_app/ui/utils/app_assests.dart';
import 'package:islami_app/ui/utils/colors.dart';
import 'package:islami_app/ui/utils/styles.dart';

class CustomTerxtFiels extends StatelessWidget {
  const CustomTerxtFiels({super.key});

  @override
  Widget build(BuildContext context) {
    final OutlineInputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Appcolor.gold),
    );
    return TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        focusedBorder: border,
        border: border,
        enabledBorder: border,
        labelText: 'Sura Name',
        labelStyle: AppStyle.white16bold,
        prefixIcon: Image.asset(AppAssests.quranSvgrepo, color: Appcolor.gold),
      ),
    );
  }
}
