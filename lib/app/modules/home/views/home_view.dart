import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:gym_trainer/presentation/home/home.screen.dart';
import 'package:gym_trainer/presentation/profile/profile.screen.dart';
import 'package:gym_trainer/presentation/statistic/statistic.screen.dart';
import 'package:gym_trainer/presentation/wallet/wallet.screen.dart';
import '../controllers/home_controller.dart';


class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final iconList = [
      Icons.home,
      Icons.bar_chart,
      Icons.account_balance_wallet,
      Icons.person,
    ];

    final pages = [
      const HomeScreen(),
      const StatisticScreen(),
      const WalletScreen(),
      const ProfileScreen(),
    ];

    return Obx(() => Scaffold(
          
          body: pages[controller.currentIndex.value], // swap body
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: AnimatedBottomNavigationBar.builder(
            backgroundColor: Colors.black,
            itemCount: iconList.length,
            tabBuilder: (int index, bool isActive) {
              return Icon(
                iconList[index],
                size: 24,
                color: isActive ? Colors.red : Colors.grey,
              );
            },
            activeIndex: controller.currentIndex.value,
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.verySmoothEdge,
            leftCornerRadius: 32,
            rightCornerRadius: 32,
            onTap: controller.changeTab, // change tab index
          ),
        ));
  }
}
