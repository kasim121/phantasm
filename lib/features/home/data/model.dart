class MenuItem {
  final String title;
  final String iconPath;
  final double iconSize;

  const MenuItem(this.title, this.iconPath, this.iconSize);

  static const userProfile = MenuItem(
    'Profile',
    'assets/icons/user.png',
    16,
  );
  static const userHomePage = MenuItem(
    'HomePage',
    'assets/icons/homepage.png',
    16,
  );
  static const userMyCart = MenuItem(
    'My Cart',
    'assets/icons/bag.png',
    16,
  );
  static const userFavorite = MenuItem(
    'Favorite',
    'assets/icons/heart.png',
    16,
  );
  static const userOrders = MenuItem(
    'Orders',
    'assets/icons/orders.png',
    16,
  );
  static const userNotification = MenuItem(
    'Notifications',
    'assets/icons/notification.png',
    16,
  );

  static const all = <MenuItem>[
    userProfile,
    userHomePage,
    userMyCart,
    userFavorite,
    userOrders,
    userNotification
  ];
}
