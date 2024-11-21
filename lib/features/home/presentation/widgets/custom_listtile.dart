import 'package:flutter/material.dart';
import 'package:phantasm/confi/themes/app_colors.dart';
import 'package:phantasm/confi/themes/app_text_style.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String iconPath;
  final double iconSize;
  final VoidCallback? onTap;
  final bool selected;
  final Color? selectedTileColor;

  const CustomListTile({
    Key? key,
    required this.title,
    required this.iconPath,
    required this.iconSize,
    this.selected = false,
    this.onTap,
    this.selectedTileColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: onTap,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            width: iconSize,
            height: iconSize,
          ),
          const SizedBox(width: 8),
          Text(
            title,
            style: AppTextStyles.airbnbCerealText(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
