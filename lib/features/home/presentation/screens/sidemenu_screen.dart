import 'package:flutter/material.dart';
import 'package:phantasm/features/home/data/model.dart';
import '../../../../confi/themes/app_colors.dart';
import '../../../../confi/themes/app_text_style.dart';
import '../widgets/custom_listtile.dart';

class MenuPage extends StatelessWidget {
  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;
  const MenuPage(
      {super.key, required this.currentItem, required this.onSelectedItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: const AssetImage('assets/icons/profile.png'),
                onBackgroundImageError: (exception, stackTrace) {
                  debugPrint("Image load error: $exception");
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Hey, 👋",
                style: AppTextStyles.airbnbCerealText(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              FittedBox(
                child: Text(
                  "Alisson Becker",
                  style: AppTextStyles.airbnbCerealText(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ...MenuItem.all.map(buildMenuItem).toList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(MenuItem item) => CustomListTile(
        selectedTileColor: AppColors.customBlue,
        selected: currentItem == item,
        title: item.title,
        iconPath: item.iconPath,
        iconSize: item.iconSize,
        onTap: () => onSelectedItem(item),
      );
}
