import 'package:flutter/material.dart';
import '../../../../confi/themes/app_colors.dart';

class Indicators extends StatelessWidget {
  const Indicators({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildIndicator(true),
        const SizedBox(width: 8),
        _buildIndicator(false),
        const SizedBox(width: 8),
        _buildIndicator(false),
      ],
    );
  }

  Widget _buildIndicator(bool isActive) {
    return Container(
      width: isActive ? 35 : 8,
      height: 5,
      decoration: BoxDecoration(
        color: isActive ? AppColors.customBlue : AppColors.customLightBlue,
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
