import 'package:flutter/material.dart';
import 'package:phantasm/confi/themes/app_colors.dart';

class Indicators extends StatelessWidget {
  final int currentPage;
  final int totalPages;

  const Indicators({
    Key? key,
    required this.currentPage,
    required this.totalPages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalPages, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: _buildIndicator(index == currentPage),
        );
      }),
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
