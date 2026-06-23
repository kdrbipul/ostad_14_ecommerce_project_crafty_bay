import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad_14_ecommerce_project_crafty_bay/features/home/presentation/screens/home_screen.dart';
import 'package:provider/provider.dart';

import '../../../../app/app_colors.dart';
import '../providers/main_nav_holder_provider.dart';

class MainNavHolderScreen extends StatefulWidget {
  const MainNavHolderScreen({super.key});

  static const String name = '/main-nav-holder';

  @override
  State<MainNavHolderScreen> createState() => _MainNavHolderScreenState();
}

class _MainNavHolderScreenState extends State<MainNavHolderScreen> {

  final List<Widget> _screens = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Consumer<MainNavHolderProvider>(
      builder: (context, mainNavHolderProvider, _) {
        return Scaffold(
          body: _screens[mainNavHolderProvider.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: mainNavHolderProvider.currentIndex,
            selectedItemColor: AppColors.themeColor,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            onTap: mainNavHolderProvider.changeIndex,
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
    );
  }
}
