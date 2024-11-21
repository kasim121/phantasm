import 'package:flutter/material.dart';
import 'package:phantasm/confi/themes/app_colors.dart';

import '../../../../confi/themes/app_text_style.dart';

class CustomLoginButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;
  final double height; // Add a height parameter

  const CustomLoginButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.isLoading = false,
    this.backgroundColor = Colors.blue,
    this.textColor = Colors.white,
    this.borderRadius = 10.0,
    this.height = 50.0, // Default height value
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: EdgeInsets.symmetric(
            vertical: height / 2), // Adjust height using padding
      ),
      child: isLoading
          ? CircularProgressIndicator(
              color: textColor,
            )
          : Text(
              text,
              style: AppTextStyles.airbnbCerealText(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
    );
  }
}
