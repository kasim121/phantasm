import 'package:flutter/material.dart';
import 'package:phantasm/confi/themes/app_colors.dart';
import 'package:phantasm/confi/themes/app_text_style.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Text(
          "Profile",
          style: AppTextStyles.airbnbCerealText(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        centerTitle: true,
      ),
      body: Text(
        "Profile",
        style: AppTextStyles.airbnbCerealText(
          color: AppColors.textPrimary,
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
      ),
    );
  }
}
