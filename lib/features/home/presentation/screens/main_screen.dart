import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:phantasm/confi/themes/app_colors.dart';
import 'package:phantasm/features/home/data/model.dart';
import 'package:phantasm/features/favorite/presentation/screen/favourite.dart';
import 'package:phantasm/features/home/presentation/screens/home_screen.dart';
import 'package:phantasm/features/mycart/presentation/screens/mycart_screen.dart';
import 'package:phantasm/features/notifications/presentation/notification_screen.dart';
import 'package:phantasm/features/orders/presentation/orders_screen.dart';
import 'package:phantasm/features/profile/presentation/profile_screen.dart';

import 'sidemenu_screen.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  MenuItem currentMenuItem = MenuItem.userHomePage;
  final ZoomDrawerController _drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: _drawerController,
      style: DrawerStyle.defaultStyle,
      menuBackgroundColor: AppColors.background,
      borderRadius: 43,
      boxShadow: [
        BoxShadow(
          color: Colors.white.withOpacity(0.9),
          offset: const Offset(0, 6),
          blurRadius: 12,
          spreadRadius: 12,
        ),
      ],
      angle: -15,
      slideWidth: MediaQuery.of(context).size.width * 0.75,
      mainScreen: getScreen(),
      menuScreen: MenuPage(
        currentItem: currentMenuItem,
        onSelectedItem: (item) {
          if (item == currentMenuItem) {
            _drawerController.close!();
          } else {
            setState(() => currentMenuItem = item);
            _drawerController.close!();
          }
        },
      ),
    );
  }

  Widget getScreen() {
    switch (currentMenuItem) {
      case MenuItem.userHomePage:
        return const HomeScreen();
      case MenuItem.userProfile:
        return const Profile();
      case MenuItem.userMyCart:
        return const MyCartScreen();
      case MenuItem.userFavorite:
        return const Favourite();
      case MenuItem.userOrders:
        return const Order();
      case MenuItem.userNotification:
        return const Notifications();
      default:
        return const SizedBox.shrink();
    }
  }
}
