import 'package:flutter/material.dart';

import '../../../../confi/themes/app_colors.dart';
import '../../../../confi/themes/app_text_style.dart';

class HorizontalListView extends StatefulWidget {
  const HorizontalListView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HorizontalListViewState createState() => _HorizontalListViewState();
}

class _HorizontalListViewState extends State<HorizontalListView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 32,
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
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.customBlue : Colors.transparent,
                borderRadius: BorderRadius.circular(29),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Center(
                child: Text(
                  'Sample $index',
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
