import 'package:flutter/material.dart';

import '../../../../confi/themes/app_colors.dart';
import '../../../../confi/themes/app_text_style.dart';

class ShoeSizeListView extends StatefulWidget {
  const ShoeSizeListView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ShoeSizeListViewState createState() => _ShoeSizeListViewState();
}

class _ShoeSizeListViewState extends State<ShoeSizeListView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          bool isSelected = _selectedIndex == index;

          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = isSelected ? -1 : index;
              });
            },
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: isSelected ? AppColors.customBlue : AppColors.background,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Text(
                  '${index + 37}',
                  style: AppTextStyles.airbnbCerealText(
                    color: isSelected
                        ? AppColors.textPrimary
                        : AppColors.textPrimary,
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
