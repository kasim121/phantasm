import 'package:flutter/material.dart';
import 'package:phantasm/confi/themes/app_colors.dart';

import '../../../confi/themes/app_text_style.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.darkBackground,
        title: Text(
          "Notifications",
          style: AppTextStyles.airbnbCerealText(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        centerTitle: true,
      ),
      body: Text(
        "Notifications",
        style: AppTextStyles.airbnbCerealText(
          color: AppColors.textPrimary,
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
      ),
    );
  }
}
