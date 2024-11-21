import 'package:flutter/material.dart';
import 'package:phantasm/confi/themes/app_colors.dart';

import '../../../../confi/themes/app_text_style.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry? padding;
  final double? borderRadius;

  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = AppColors.customBlue,
    this.textColor = AppColors.textPrimary,
    this.fontSize = 18,
    this.fontWeight = FontWeight.w500,
    this.padding = const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
    this.borderRadius = 30.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 30.0),
        ),
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: AppTextStyles.airbnbCerealText(
          color: textColor ?? AppColors.textPrimary,
          fontWeight: fontWeight ?? FontWeight.w500,
          fontSize: fontSize ?? 18,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
