import 'package:flutter/material.dart';
import 'package:phantasm/confi/themes/app_colors.dart';
import 'package:phantasm/confi/themes/app_text_style.dart';

class CustomIconButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;
  final double height; // Height of the button

  const CustomIconButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.isLoading = false,
    this.borderRadius = 50.0,
    this.height = 50.0,
    this.backgroundColor = Colors.blue,
    this.textColor = Colors.white,
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
        padding: EdgeInsets.symmetric(vertical: height / 2),
      ),
      child: isLoading
          ? const CircularProgressIndicator(
              color: Colors.white,
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/google.png',
                  width: 24,
                  height: 24,
                ),
                const SizedBox(width: 10),
                Text(
                  text,
                  style: AppTextStyles.airbnbCerealText(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
    );
  }
}
