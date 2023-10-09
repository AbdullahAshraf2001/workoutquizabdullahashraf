import 'package:flutter/material.dart';
import 'package:workoutquizabdullahashraf/ui/screens/home/tabs/FirstScr/FirstScreen.dart';
import 'package:workoutquizabdullahashraf/ui/screens/home/tabs/SecondScr/SecondScreen.dart';
import 'package:workoutquizabdullahashraf/ui/screens/home/tabs/ThirdScr/ThirdScreen.dart';
import 'package:workoutquizabdullahashraf/ui/screens/home/tabs/profileScr/profileScreen.dart';
import 'package:workoutquizabdullahashraf/ui/utilites/appAssets.dart';
import 'package:workoutquizabdullahashraf/ui/utilites/appColors.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTabIndex = 0;
  List<Widget> tabs = [
    FirstScreen(),
    const SecondScreen(),
    const ThirdScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildBottomNavigationBar(),
      body: tabs[currentTabIndex],
    );
  }

  Widget buildBottomNavigationBar() => BottomNavigationBar(
        currentIndex: currentTabIndex,
        onTap: (index) {
          currentTabIndex = index;
          setState(() {});
        },
        selectedItemColor: AppColors.green,
        unselectedItemColor: AppColors.accent,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AppAssets.icHome),
            ),
            label: "FirstScr",
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppAssets.icCalendar)),
              label: "SecondScr"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(AppAssets.icGrid),
              ),
              label: "ThirdScr"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(AppAssets.icUser),
              ),
              label: "profile"),
        ],
      );
}
