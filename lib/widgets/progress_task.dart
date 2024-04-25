import 'package:flutter/material.dart';

// Package
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

// Theme
import 'package:uxgestalt/theme.dart';

// Page
import '../pages/project_detail.dart';

class ProgressTask extends StatelessWidget {
  final Color color;
  final String nameTask;
  final double percent;
  final String deadlineTime;

  // Constructor
  ProgressTask({
    this.color = const Color(0xff464660),
    this.nameTask = '',
    this.percent = 0.0,
    this.deadlineTime = '',
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => ProjectDetailPage(
                  color: color,
                  nameTask: nameTask,
                  percent: percent,
                  deadlineTime: deadlineTime,
                )),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          right: 15,
        ),
        width: 130,
        height: 160,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            // Container Stack
            Positioned(
              right: -45,
              child: Transform(
                alignment: Alignment.topRight,
                transform: Matrix4.rotationZ(0.4),
                child: Container(
                  width: 79,
                  height: 79,
                  decoration: BoxDecoration(
                    color: Color(0xFFF1E9E5).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),

            // Progress Task
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    top: 23,
                    right: 21,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Progress Task
                      Container(
                        height: 25,
                        width: 25,
                        child: SimpleCircularProgressBar(
                          progressStrokeWidth: 2,
                          progressColors: [whiteColor],
                          backStrokeWidth: 1,
                          backColor: greyColor,
                          mergeMode: true,
                          valueNotifier: ValueNotifier(percent),
                          // animationDuration: 0,
                          onGetText: (double value) {
                            return Text(
                              '${value.toInt()}%',
                              style: whiteTextStyle.copyWith(
                                fontSize: 6,
                              ),
                            );
                          },
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      // Task
                      Text(
                        '${nameTask}',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: whiteTextStyle.copyWith(fontSize: 14),
                      ),

                      SizedBox(
                        height: 12,
                      ),

                      // Deadline
                      Container(
                        height: 16,
                        decoration: BoxDecoration(
                          color: greyColor.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'until ${deadlineTime}',
                            style: GoogleFonts.poppins(
                                fontSize: 8, color: whiteColor),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
