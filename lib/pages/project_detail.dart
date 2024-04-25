import 'dart:ui';

import 'package:flutter/material.dart';

// Package
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

// Theme
import '../theme.dart';

// Widget
import '../widgets/teams.dart';

class ProjectDetailPage extends StatelessWidget {
  final Color color;
  final String nameTask;
  final double percent;
  final String deadlineTime;

  // Constructor
  ProjectDetailPage({
    this.color = const Color(0xff464660),
    this.nameTask = '',
    this.percent = 0.0,
    this.deadlineTime = '',
  });

  @override
  Widget build(BuildContext context) {
    // Header
    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 30,
          right: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Icon(
                    Icons.close,
                    color: Color(0xff34407D),
                    size: 20,
                  ),
                ),
              ),
            ),
            Icon(
              Icons.more_horiz_rounded,
              size: 40,
              color: Colors.white,
            ),
          ],
        ),
      );
    }

    // Detail
    Widget detail() {
      return Stack(
        children: [
          // MAIN CONTENT
          Container(
            margin: EdgeInsets.only(
              top: 34,
            ),
            decoration: BoxDecoration(
              color: Color(0xffFFFDFC),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 65),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Name, Role
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Mary Carter',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: navyColor,
                          ),
                        ),
                        Text(
                          'UI Designer',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: greyColor,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  // Detail Project
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    width: 102,
                    height: 19,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffBFBFBF),
                      ),
                      color: Color(0xff34407D).withOpacity(0.52),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 7,
                        ),
                        Icon(
                          Icons.calendar_today,
                          size: 10,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          '${deadlineTime}',
                          style: blackTextStyle.copyWith(
                            fontSize: 7,
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                    ),
                    child: Text(
                      'On Progress',
                      style: GoogleFonts.poppins(
                        color: greyColor,
                        fontSize: 7,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(
                      left: 30,
                      right: 43,
                    ),
                    height: 11,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xffBFBFBF),
                      ),
                    ),
                    child: LinearPercentIndicator(
                      padding: EdgeInsets.all(0),
                      animation: true,
                      lineHeight: 11,
                      animationDuration: 2500,
                      percent: (percent / 100),
                      center: Text(
                        "${percent}",
                        style: GoogleFonts.poppins(
                          color: navyColor,
                          fontSize: 7,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      barRadius: Radius.circular(10),
                      progressColor: Color(0xffDBA8C6),
                      backgroundColor: Colors.white,
                    ),
                  ),

                  SizedBox(
                    height: 47,
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 30),
                    width: 175,
                    child: Text(
                      'Redesign Pixel Website',
                      style: navyTextStyle.copyWith(
                        fontSize: 24,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    child: Text(
                      'In this project, I need to redesign website pixel.com become clean website. It is very important to choose a best image asset and color. The main goal is to make colorful website.',
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                        height: 2.5,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  Container(
                    margin: EdgeInsets.only(
                      left: 30,
                      bottom: 15,
                    ),
                    child: Text(
                      'Team',
                      style: navyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),

                  // TEAM
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    child: Teams(
                      nameTeam: 'Pixel Studio',
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  Container(
                    margin: EdgeInsets.only(
                      left: 30,
                      bottom: 31,
                    ),
                    child: Text(
                      'Attachment',
                      style: navyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 30,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 25,
                          ),
                          Icon(
                            Icons.add_box,
                            size: 50,
                            color: Color(0xffC4C4C4),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 133,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/attach1.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/attach2.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/attach3.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/attach2.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          // FLOATING IMAGE
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 15),
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    100,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color:
                          Color.fromARGB(255, 136, 133, 133).withOpacity(0.4),
                      offset: Offset(0, 5),
                    )
                  ]),
              child: ClipOval(
                child: Image.asset(
                  'assets/profile.png',
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: color,
      body: ListView(
        children: [
          header(),
          detail(),
        ],
      ),
    );
  }
}
