import 'package:flutter/material.dart';
import '../../../../confi/themes/app_colors.dart';

class Ellipses extends StatelessWidget {
  final int currentPage;
  const Ellipses({Key? key, required this.currentPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: MediaQuery.of(context).size.height *
              (-190 / MediaQuery.of(context).size.height),
          left: MediaQuery.of(context).size.width *
              (170 / MediaQuery.of(context).size.width),
          child: Container(
            width: MediaQuery.of(context).size.width * (389 / 411),
            height: MediaQuery.of(context).size.width * (389 / 411),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.lightBlue,
                width: MediaQuery.of(context).size.width * (85 / 411),
              ),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * (150 / 800),
          left: MediaQuery.of(context).size.width * (70 / 411),
          child: Container(
            width: MediaQuery.of(context).size.width * (13 / 411),
            height: MediaQuery.of(context).size.width * (13 / 411),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.lightBlue,
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * (350 / 800),
          left: MediaQuery.of(context).size.width * (50 / 411),
          child: Container(
            width: MediaQuery.of(context).size.width * (13 / 411),
            height: MediaQuery.of(context).size.width * (13 / 411),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primary,
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * (300 / 800),
          right: MediaQuery.of(context).size.width * (50 / 411),
          child: Container(
            width: MediaQuery.of(context).size.width * (13 / 411),
            height: MediaQuery.of(context).size.width * (13 / 411),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }
}
