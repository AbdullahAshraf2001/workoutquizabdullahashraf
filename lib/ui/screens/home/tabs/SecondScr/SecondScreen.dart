import 'package:flutter/material.dart';

import '../../../../utilites/appAssets.dart';
import '../../../../utilites/appColors.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  static const String routeName = "secondScreen";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 40),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(AppAssets.icGirl),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hello, Jade",
                        style: TextStyle(fontSize: 16, fontFamily: "Inter"),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: const Text(
                            "Ready to workout?",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Inter"),
                          ))
                    ],
                  ),
                  const Spacer(),
                  Stack(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.notifications,
                            color: AppColors.accent),
                        onPressed: () {},
                      ),
                      Positioned(
                        top: 2,
                        right: 12,
                        child: Container(
                          width: 10,
                          height: 30,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 100,
                margin: const EdgeInsets.only(top: 17),
                color: AppColors.blueGrey,
                child: Container(
                  margin: const EdgeInsets.only(
                      top: 20, right: 15, left: 15, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(AppAssets.icHeart),
                              const SizedBox(
                                width: 3,
                              ),
                              const Text(
                                "Heart Rate",
                                style: TextStyle(fontFamily: "Inter"),
                              ),
                            ],
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: const Text(
                                "81 BPM",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    fontFamily: "Inter"),
                              ))
                        ],
                      ),
                      const VerticalDivider(),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(AppAssets.icList),
                              const SizedBox(
                                width: 3,
                              ),
                              const Text(
                                "To-do",
                                style: TextStyle(fontFamily: "Inter"),
                              ),
                            ],
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: const Text(
                                "32,5 %",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    fontFamily: "Inter"),
                              ))
                        ],
                      ),
                      const VerticalDivider(),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(AppAssets.icFlame),
                              const SizedBox(
                                width: 3,
                              ),
                              const Text(
                                "Calo",
                                style: TextStyle(fontFamily: "Inter"),
                              ),
                            ],
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: const Text(
                                "1000 Cal",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    fontFamily: "Inter"),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 17),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Workout Programs",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Inter"),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: const TabBar(
                  tabs: <Widget>[
                    Tab(
                      child: Text(
                        "All Type",
                        style: TextStyle(
                            fontFamily:
                                "Inter"),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "fullBody",
                        style: TextStyle(
                            fontFamily:
                                "Inter"),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Upper",
                        style: TextStyle(
                            fontFamily:
                                "Inter"),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Lower",
                        style: TextStyle(
                            fontFamily:
                                "Inter"),
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: <Widget>[
                    NestedTabBar('All Type'),
                    NestedTabBar('fullBody'),
                    NestedTabBar('Upper'),
                    NestedTabBar('Lower'),
                  ],
                ),
              ),

              ///tabBar
            ],
          ),
        ),
      ),
    );
  }
}

class NestedTabBar extends StatefulWidget {
  const NestedTabBar(this.outerTab, {super.key});

  final String outerTab;

  @override
  State<NestedTabBar> createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: TabBarView(
            controller: DefaultTabController.of(context),
            children: <Widget>[
              ListView(
                children: [
                  Card(
                    color: AppColors.blueGrey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 174,
                              width: 150,
                              margin: const EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 24, bottom: 12),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors
                                          .white,
                                    ),
                                    child: Container(
                                        margin: const EdgeInsets.all(7),
                                        child: const Text(
                                          "7 days",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter"),
                                        )),
                                  ),
                                  const Expanded(
                                    child: Text(
                                      "Morning Yoga",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                          fontFamily: "Inter"),
                                    ),
                                  ),
                                  const Expanded(
                                    child: Text(
                                      "Improve mental focus",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          fontFamily: "Inter"),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.only(bottom: 20),
                                      child: Row(
                                        children: [
                                          Image.asset(AppAssets.icClock),
                                          const SizedBox(width: 3),
                                          const Text(
                                            "30 mins",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                fontFamily: "Inter"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                margin: EdgeInsets.only(
                                    bottom: 24, right: 16, top: 40),
                                width: 130,
                                height: 118.49,
                                child: Image.asset(AppAssets.icYogaPic)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: AppColors.blueGrey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 174,
                              width: 150,
                              margin: const EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 24, bottom: 12),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors
                                          .white,
                                    ),
                                    child: Container(
                                        margin: const EdgeInsets.all(7),
                                        child: const Text(
                                          "3 days",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter"),
                                        )),
                                  ),
                                  const Expanded(
                                    child: Text(
                                      "Plank Exercise",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                          fontFamily: "Inter"),
                                    ),
                                  ),
                                  const Expanded(
                                    child: Text(
                                      "Improve posture and stability",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          fontFamily: "Inter"),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.only(bottom: 20),
                                      child: Row(
                                        children: [
                                          Image.asset(AppAssets.icClock),
                                          const SizedBox(width: 3),
                                          const Text(
                                            "30 mins",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                fontFamily: "Inter"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 16, top: 50),
                                width: 130,
                                height: 125.08,
                                child: Image.asset(AppAssets.icPlank)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: AppColors.blueGrey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 174,
                              width: 150,
                              margin: const EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 24, bottom: 12),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors
                                          .white,
                                    ),
                                    child: Container(
                                        margin: const EdgeInsets.all(7),
                                        child: const Text(
                                          "5 days",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter"),
                                        )),
                                  ),
                                  const Expanded(
                                    child: Text(
                                      "Third exercise",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                          fontFamily: "Inter"),
                                    ),
                                  ),
                                  const Expanded(
                                    child: Text(
                                      "Improve any thing",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          fontFamily: "Inter"),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.only(bottom: 20),
                                      child: Row(
                                        children: [
                                          Image.asset(AppAssets.icClock),
                                          const SizedBox(width: 3),
                                          const Text(
                                            "15 mins",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                fontFamily: "Inter"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                margin: EdgeInsets.only(
                                    bottom: 24, right: 16, top: 40),
                                width: 130,
                                height: 118.49,
                                child: Image.asset(AppAssets.icYogaPic)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ListView(
                children: [
                  Card(
                    color: AppColors.blueGrey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 174,
                              width: 150,
                              margin: const EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 24, bottom: 12),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors
                                          .white,
                                    ),
                                    child: Container(
                                        margin: const EdgeInsets.all(7),
                                        child: const Text(
                                          "1 day",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter"),
                                        )),
                                  ),
                                  const Expanded(
                                    child: Text(
                                      "Full Body",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                          fontFamily: "Inter"),
                                    ),
                                  ),
                                  const Expanded(
                                    child: Text(
                                      "second tab",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          fontFamily: "Inter"),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.only(bottom: 20),
                                      child: Row(
                                        children: [
                                          Image.asset(AppAssets.icClock),
                                          const SizedBox(width: 3),
                                          const Text(
                                            "30 mins",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                fontFamily: "Inter"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                margin: EdgeInsets.only(
                                    bottom: 24, right: 16, top: 40),
                                width: 130,
                                height: 118.49,
                                child: Image.asset(AppAssets.icYogaPic)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ListView(
                children: [
                  Card(
                    color: AppColors.blueGrey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 174,
                              width: 150,
                              margin: const EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 24, bottom: 12),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors
                                          .white,
                                    ),
                                    child: Container(
                                        margin: const EdgeInsets.all(7),
                                        child: const Text(
                                          "7 days",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter"),
                                        )),
                                  ),
                                  const Expanded(
                                    child: Text(
                                      "Upper",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                          fontFamily: "Inter"),
                                    ),
                                  ),
                                  const Expanded(
                                    child: Text(
                                      "Third Tab",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          fontFamily: "Inter"),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.only(bottom: 20),
                                      child: Row(
                                        children: [
                                          Image.asset(AppAssets.icClock),
                                          const SizedBox(width: 3),
                                          const Text(
                                            "30 mins",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                fontFamily: "Inter"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                margin: EdgeInsets.only(
                                    bottom: 24, right: 16, top: 40),
                                width: 130,
                                height: 118.49,
                                child: Image.asset(AppAssets.icYogaPic)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ListView(
                children: [
                  Card(
                    color: AppColors.blueGrey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 174,
                              width: 150,
                              margin: const EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 24, bottom: 12),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors
                                          .white,
                                    ),
                                    child: Container(
                                        margin: const EdgeInsets.all(7),
                                        child: const Text(
                                          "7 days",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter"),
                                        )),
                                  ),
                                  const Expanded(
                                    child: Text(
                                      "Lower",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                          fontFamily: "Inter"),
                                    ),
                                  ),
                                  const Expanded(
                                    child: Text(
                                      "Forth Tab",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          fontFamily: "Inter"),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.only(bottom: 20),
                                      child: Row(
                                        children: [
                                          Image.asset(AppAssets.icClock),
                                          const SizedBox(width: 3),
                                          const Text(
                                            "30 mins",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                fontFamily: "Inter"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                margin: EdgeInsets.only(
                                    bottom: 24, right: 16, top: 40),
                                width: 130,
                                height: 118.49,
                                child: Image.asset(AppAssets.icYogaPic)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
