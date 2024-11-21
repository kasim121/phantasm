import 'package:flutter/material.dart';

import '../../../../confi/themes/app_colors.dart';
import '../../../../confi/themes/app_text_style.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.darkBackground,
        title: Text(
          "Favourite",
          style: AppTextStyles.airbnbCerealText(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        centerTitle: true,
      ),
      body: Text(
        "Favourite",
        style: AppTextStyles.airbnbCerealText(
          color: AppColors.textPrimary,
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
      ),
    );
  }
}
