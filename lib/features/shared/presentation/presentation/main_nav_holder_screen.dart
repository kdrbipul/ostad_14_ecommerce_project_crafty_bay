import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class MainNavHolderScreen extends StatefulWidget {
  const MainNavHolderScreen({super.key});

  static const String name = '/main-nav-holder';

  @override
  State<MainNavHolderScreen> createState() => _MainNavHolderScreenState();
}

class _MainNavHolderScreenState extends State<MainNavHolderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: AppColors.themeColor,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.list_dash),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.cart),
            label: 'Carts',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_favorites),
            label: 'Wishlist',
          ),
        ],
      ),
    );
  }
}
