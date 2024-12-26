import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sole_mate/screens/dashboard/dashboard_tabs/orders.dart';

import '../../constants/colors.dart';
import '../../repository/bottom_tab_repo.dart';
import 'dashboard_tabs/explore_tab.dart';
import 'dashboard_tabs/favorite.dart';
import 'dashboard_tabs/home_tab.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({super.key});

  @override
  ConsumerState<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  final List<Widget> dashboardTabs = const [
    HomeTab(),
    ExploreTab(),
    FavoriteTab(),
    OrdersTab(),
  ];

  @override
  Widget build(BuildContext context) {
    final bottomNavTab = ref.watch(tabIndex);
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: dashboardTabs[bottomNavTab],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          ref.read(tabIndex.notifier).state = index;
        },
        currentIndex: bottomNavTab,
        selectedIconTheme: IconThemeData(color: Colors.black),
        unselectedIconTheme: IconThemeData(color: AppColors.greyColor),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: AppColors.greyColor,
        elevation: 0,
        selectedLabelStyle:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(color: AppColors.greyColor),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.houseChimneyWindow),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.shoePrints),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.heart),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.cube),
            label: "Orders",
          ),
        ],
      ),
    );
  }
}
