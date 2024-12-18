import 'package:flutter/material.dart';
import 'package:phantasm/confi/themes/app_text_style.dart';
import '../../../../confi/themes/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final bool isPassword;
  final bool isPasswordVisible;
  final VoidCallback? onTogglePasswordVisibility;
  final TextInputType keyboardType;
  final TextAlign textAlign;

  const CustomTextField({
    Key? key,
    this.isPassword = false,
    this.isPasswordVisible = false,
    this.onTogglePasswordVisibility,
    this.keyboardType = TextInputType.text,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword && !isPasswordVisible,
      keyboardType: keyboardType,
      style: AppTextStyles.airbnbCerealText(
        color: AppColors.textPrimary,
        fontWeight: FontWeight.w400,
        fontSize: 14,
      ),
      textAlign: textAlign,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        filled: true,
        fillColor: AppColors.darkBackground,
        border: InputBorder.none,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(
            'assets/icons/search.png',
            width: 20,
            height: 20,
            color: AppColors.textPrimary,
          ),
        ),
        hintText: 'Looking for shoes',
        hintStyle: AppTextStyles.airbnbCerealText(
          color: AppColors.textPrimary.withOpacity(0.5),
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
