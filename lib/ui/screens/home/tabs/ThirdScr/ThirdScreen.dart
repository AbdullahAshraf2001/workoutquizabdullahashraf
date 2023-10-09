import 'package:flutter/material.dart';

import '../../../../utilites/appAssets.dart';
import '../../../../utilites/appColors.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  static const String routeName = "thirdScreen";

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  List<bool> isSelected = [false, false, false, false];

  final List<String> chipLabels = [
    "Discover",
    "News",
    "Most Viewed",
    "Saved"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 40),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppAssets.icFlower),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        "AliceCare",
                        style: TextStyle(fontFamily: 'Milonga', fontSize: 24),
                      )),
                ],
              ),
              Container(
                width: 320,
                height: 44,
                margin: const EdgeInsets.only(top: 24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 0.5,
                    ),
                  ],
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 24,
                      ),
                    ),
                    Text(
                      "Articles, Video, Audio and More,..",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontFamily: "Inter",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
                child: Container(
                  margin: const EdgeInsets.only(top: 24),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: chipLabels.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: FilterChip(
                          label: Text(
                            chipLabels[index],
                            style: TextStyle(
                              color: isSelected[index]
                                  ? AppColors.blackPurple
                                  : Colors.grey,
                              fontFamily: "Inter",
                            ),
                          ),
                          selected: isSelected[index],
                          backgroundColor: isSelected[index]
                              ? AppColors.lightPurple
                              : Colors.white54,
                          onSelected: (isSelected) {
                            setState(() {
                              this.isSelected[index] = isSelected;
                            });
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20, top: 24),
                    child: const Row(
                      children: [
                        Text(
                          "Hot topics",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              fontFamily: "Inter"),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(right: 20, top: 30),
                    child: const Row(
                      children: [
                        Text(
                          "See more >",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.blackPurple,
                              fontFamily: "Inter"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, bottom: 12, top: 16, right: 32),
                          height: 168,
                          width: 326,
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(AppAssets.icGirlPicture),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 24, right: 40),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          bottom: 8, top: 70),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10),
                                        color: AppColors
                                            .lightYellow,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Container(
                                            margin: const EdgeInsets.all(7),
                                            child: const Text(
                                              "Self-Care",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: "Inter",
                                                  color: AppColors.blackRed),
                                            ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 12),
                                      child: const Text(
                                        "10 Easy Self-Care Ideas That Can Help Boost Your Health",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            fontFamily: "Inter",
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, bottom: 12, top: 16, right: 32),
                          height: 168,
                          width: 326,
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(AppAssets.icGirlImage),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 24, right: 40),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          bottom: 8, top: 70),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10),
                                        color: AppColors
                                            .lightYellow,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Container(
                                            margin: const EdgeInsets.all(7),
                                            child: const Text(
                                              "CYCLE",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: "Inter",
                                                  color: AppColors.blackRed),
                                            )),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 12),
                                      child: const Text(
                                        "How to take care of Menstrual Hygiene during Menstrual Cycle",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            fontFamily: "Inter",
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20, top: 30),
                    child: const Row(
                      children: [
                        Text(
                          "Get Tips",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              fontFamily: "Inter"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Card(
                color: AppColors.blueGrey,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(left: 16, top: 40),
                            width: 110.69,
                            height: 150,
                            child: Image.asset(AppAssets.icDoctor)),
                      ],
                    ),
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
                                margin:
                                    const EdgeInsets.only(top: 24, right: 16),
                                child: const Text(
                                  "Connect with doctors & get suggestions",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      fontFamily: "Inter"),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 8),
                                child: const Text(
                                  "Connect now and get expert insights",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      fontFamily: "Inter"),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(bottom: 24, top: 15),
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors
                                      .blackPurple,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                      margin: const EdgeInsets.all(7),
                                      child: const Text(
                                        "View details",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Inter",
                                            color: Colors.white),
                                      ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20, top: 30),
                    child: const Row(
                      children: [
                        Text(
                          "Cycle Phases and Period",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              fontFamily: "Inter"),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(right: 20, top: 30),
                    child: const Row(
                      children: [
                        Text(
                          "See more >",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.blackPurple,
                              fontFamily: "Inter"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
