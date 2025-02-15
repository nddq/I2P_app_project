// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import '../components/DashboardHeader.dart';
import '../components/MenuController.dart';
import 'package:provider/provider.dart';
import 'package:my_app/responsive.dart';

import '../components/ProgressBarChart.dart';
import '../components/ProgressCountCard.dart';
import '../components/ProgressStreakCard.dart';

class Progress extends StatelessWidget {
  const Progress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomPaint(
              painter: DashboardHeader(),
              child: SizedBox(
                  height: 350,
                  child: Column(
                    children: [
                      const SizedBox(height: 100),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(width: 20),
                          if (!Responsive.isDesktop(context))
                            IconButton(
                              icon: const Icon(Icons.menu),
                              iconSize: 40,
                              onPressed:
                                  context.read<MenuController>().controlMenu,
                            ),
                          const SizedBox(width: 30),
                          const Text("Progress Tracker",
                              style: TextStyle(
                                  color: Color(0xff0B3F24),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40)),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(width: 50),
                          if (!Responsive.isDesktop(context))
                            const SizedBox(width: 55),
                          const Text("Continue to grow.",
                              style: TextStyle(
                                  color: Color(0xff0B3F24),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20)),
                        ],
                      )
                    ],
                  )),
            ),
            Container(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Row(children: [
                  Column(
                    children: [
                      Row(children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back_ios_new_rounded),
                          // tooltip: 'Increase volume by 10',
                          onPressed: () {
                            // setState(() {
                              Navigator. pop(context);
                            // });
                          },
                        ),
                        Text(
                          "back",
                          style: TextStyle(
                              color: Color(0xff0B3F24),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        )
                      ]),
                      SizedBox(height: 550)
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            "Overview",
                            style: TextStyle(
                                color: Color(0xff0B3F24),
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(children: [
                        SizedBox(width: 135),
                        ProgressStreakCard(
                            title: "Current Streak", numdays: 10),
                        SizedBox(width: 10),
                        ProgressStreakCard(
                            title: "Longest Streak", numdays: 24),
                      ]),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 135),
                          ProgressCountCard(
                              title: "Journal Entries", numdays: 30)
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 135),
                          ProgressCountCard(
                              title: "Guided Questions", numdays: 35)
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 40),
                          Card(
                              elevation: 3,
                              child: InkWell(
                                  splashColor: const Color(0xffB1CEBF),
                                  onTap: () {
                                    debugPrint('Card tapped.');
                                  },
                                  child: Container(
                                    color: Color(0xFFFFFF),
                                    // padding: const EdgeInsets.all(defaultPadding),
                                    width: 600,
                                    height: 480,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(height: 5),
                                        Row(
                                          // mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            SizedBox(width: 5),
                                            Text(
                                              "Monthly Mood Tracker",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color(0xff0B3F24),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        MoodTrackerBar(
                                          title: '',
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(width: 40),
                                            Container(
                                                child: Image.asset(
                                                    "assets/images/Happiness.png",
                                                    width: 92,
                                                    height: 50)),
                                            Container(
                                                // height: 50.0,
                                                // width: 50.0,
                                                child: Image.asset(
                                                    "assets/images/Sadness.png",
                                                    width: 92,
                                                    height: 50)),
                                            Container(
                                                // height: 50.0,
                                                // width: 50.0,
                                                child: Image.asset(
                                                    "assets/images/Fear.png",
                                                    width: 92,
                                                    height: 50)),
                                            Container(
                                                // height: 50.0,
                                                // width: 50.0,
                                                child: Image.asset(
                                                    "assets/images/Disgust.png",
                                                    width: 92,
                                                    height: 50)),
                                            Container(
                                                // height: 50.0,
                                                // width: 50.0,
                                                child: Image.asset(
                                                    "assets/images/Anger.png",
                                                    width: 92,
                                                    height: 50)),
                                            Container(
                                                // height: 50.0,
                                                // width: 50.0,
                                                child: Image.asset(
                                                    "assets/images/Surprise.png",
                                                    width: 92,
                                                    height: 50))
                                          ],
                                        )
                                      ],
                                    ),
                                  ))),
                          // );
                        ],
                      )
                    ],
                  )
                ])),
          ],
        ),
      ),
    );
  }
}
