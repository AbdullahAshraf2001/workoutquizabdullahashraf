import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:workoutquizabdullahashraf/ui/utilites/appAssets.dart';
import 'package:workoutquizabdullahashraf/ui/utilites/appColors.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Container(
            margin: const EdgeInsets.only(left: 15, top: 10),
            child: Image.asset(AppAssets.icTree)),
        title: const Text(
          "Moody",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: AppColors.accent),
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications, color: AppColors.accent),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, top: 25),
              child: const Row(
                children: [
                  Text(
                    "Hello, Sara Rose",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.accent,
                        fontFamily: "Inter"),
                  ),
                  Spacer()
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(left: 20, top: 25),
                child: const Row(
                  children: [
                    Text(
                      "How are you feeling today?",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.accent,
                          fontFamily: "Inter"),
                    ),
                  ],
                )),
            Container(
              margin: const EdgeInsets.only(top: 12),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Image.asset(AppAssets.icLove),
                      const Text(
                        "Love",
                        style: TextStyle(fontFamily: "Inter"),
                      )
                    ],
                  )),
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset(AppAssets.icCool),
                        const Text(
                          "Cool",
                          style: TextStyle(fontFamily: "Inter"),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset(AppAssets.icHappy),
                        const Text(
                          "Happy",
                          style: TextStyle(fontFamily: "Inter"),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset(AppAssets.icSad),
                        const Text(
                          "Sad",
                          style: TextStyle(fontFamily: "Inter"),
                        )
                      ],
                    ),
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
                        "Feature",
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
                            color: AppColors.green,
                            fontFamily: "Inter"),
                      ),
                    ],
                  ),
                )
              ],
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 168,
                enableInfiniteScroll: false,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(seconds: 1),
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: pages.map((widget) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      child: widget,
                    );
                  },
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(pages.length, (index) {
                return Container(
                  width: 20,
                  height: 6,
                  margin: EdgeInsets.only(bottom: 40, top: 12),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index
                        ? Colors.black
                        : Colors.grey.withOpacity(0.4),
                  ),
                );
              }),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const Row(
                    children: [
                      Text(
                        "Exercise",
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
                  margin: const EdgeInsets.only(right: 20),
                  child: const Row(
                    children: [
                      Text(
                        "See more >",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.green,
                            fontFamily: "Inter"),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        padding: const EdgeInsets.only(left: 8),
                        margin:
                            const EdgeInsets.only(left: 20, right: 20, top: 10),
                        color: AppColors.purple,
                        child: Row(
                          children: [
                            Image.asset(AppAssets.icHead),
                            const SizedBox(width: 10),
                            const Text(
                              "Relaxation",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  fontFamily: "Inter"),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        padding: const EdgeInsets.only(left: 8),
                        margin:
                            const EdgeInsets.only(left: 20, right: 20, top: 10),
                        color: AppColors.orange,
                        child: Row(
                          children: [
                            Image.asset(AppAssets.icBreath),
                            const SizedBox(width: 10),
                            const Text(
                              "Breathing",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  fontFamily: "Inter"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        padding: const EdgeInsets.only(left: 8),
                        margin:
                            const EdgeInsets.only(left: 20, right: 20, top: 10),
                        color: AppColors.lightPink,
                        child: Row(
                          children: [
                            Image.asset(AppAssets.icRelax),
                            const SizedBox(width: 10),
                            const Text(
                              "Meditation",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  fontFamily: "Inter"),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        padding: const EdgeInsets.only(left: 8),
                        margin:
                            const EdgeInsets.only(left: 20, right: 20, top: 10),
                        color: AppColors.lightBlue,
                        child: Row(
                          children: [
                            Image.asset(AppAssets.icYoga),
                            const SizedBox(width: 10),
                            const Text(
                              "Yoga",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  fontFamily: "Inter"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  final List<Widget> pages = [
    Container(
      margin: EdgeInsets.only(right: 24, top: 12),
      color: AppColors.lightGreen,
      child: Row(
        children: [
          Container(
            width: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 24, left: 24),
                    child: const Text("Positive vibes")),
                Container(
                    margin: const EdgeInsets.only(left: 24, top: 10),
                    child: const Text("Boost your mood with positive vibes")),
                Container(
                  margin: const EdgeInsets.only(left: 24, top: 10),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.play_circle,
                        color: AppColors.green,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("10 mins")
                    ],
                  ),
                )
              ],
            ),
          ),
          Image.asset(AppAssets.icDog)
        ],
      ),
    ),
    Container(
      margin: EdgeInsets.only(right: 24, top: 12),
      color: AppColors.lightGreen,
      child: Row(
        children: [
          Container(
            width: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 24, left: 24),
                    child: const Text("Second")),
                Container(
                    margin: const EdgeInsets.only(left: 24, top: 10),
                    child: const Text("Second")),
                Container(
                  margin: const EdgeInsets.only(left: 24, top: 10),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.play_circle,
                        color: AppColors.green,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("10 mins")
                    ],
                  ),
                )
              ],
            ),
          ),
          Image.asset(AppAssets.icDog)
        ],
      ),
    ),
    Container(
      margin: EdgeInsets.only(right: 24, top: 12),
      color: AppColors.lightGreen,
      child: Row(
        children: [
          Container(
            width: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 24, left: 24),
                    child: const Text("Third")),
                Container(
                    margin: const EdgeInsets.only(left: 24, top: 10),
                    child: const Text("Third")),
                Container(
                  margin: const EdgeInsets.only(left: 24, top: 10),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.play_circle,
                        color: AppColors.green,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("10 mins")
                    ],
                  ),
                )
              ],
            ),
          ),
          Image.asset(AppAssets.icDog)
        ],
      ),
    ),
  ];
}
