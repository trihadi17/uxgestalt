import 'package:flutter/material.dart';

//* Theme
import '../theme.dart';

//* Widgets
import '../widgets/progress_task.dart';
import '../widgets/teams.dart';
import '../widgets/notification.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Header
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
          top: 37,
          left: 30,
          right: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mon, Nov 9 2020',
                  style: greyTextStyle.copyWith(
                    fontSize: 10,
                  ),
                ),
                Text(
                  'Hi Mary Carter',
                  style: navyTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            ClipOval(
              child: Image.asset(
                'assets/profile.png',
                fit: BoxFit.cover,
                width: 40,
                height: 40,
              ),
            )
          ],
        ),
      );
    }

    Widget search() {
      return Container(
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(17),
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Color(0xffF3F4FA),
        ),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: Color(0xff34407D),
              size: 16,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: TextFormField(
              style: blackTextStyle.copyWith(
                fontSize: 11,
              ),
              decoration: InputDecoration.collapsed(
                  hintText: 'Search',
                  hintStyle: greyTextStyle.copyWith(
                    fontSize: 11,
                  )),
            ))
          ],
        ),
      );
    }

    Widget progress() {
      return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 30,
              ),
              ProgressTask(
                color: Color(0xff464660),
                nameTask: 'Redesign Pixel Website',
                percent: 50,
                deadlineTime: '20 January',
              ),
              ProgressTask(
                color: Color(0xffFF3D68),
                nameTask: 'Mobile App Furniture',
                percent: 25,
                deadlineTime: '10 October',
              ),
              ProgressTask(
                color: Color(0xffEBA83A),
                nameTask: 'Redesign Ikea',
                percent: 50,
                deadlineTime: '7 November',
              ),
            ],
          ),
        ),
      );
    }

    Widget notification() {
      return Container(
        margin: EdgeInsets.only(
          left: 30,
          right: 30,
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TITLE
            Text(
              'Notification',
              style: navyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),

            SizedBox(
              height: 20,
            ),

            // NOTIFICATION
            MessageNotification(
              name: 'Ryan Malone',
              message: 'Ryan invite you to project.',
            ),
            // MessageNotification(
            //   name: 'Ryan Malone',
            //   message: 'Ryan invite you to project.',
            // ),
          ],
        ),
      );
    }

    Widget myTeam() {
      return Container(
        margin: EdgeInsets.only(
          left: 30,
          right: 30,
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TITLE
            Text(
              'My Team',
              style: navyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),

            SizedBox(
              height: 15,
            ),

            // TEAM
            Teams(
              nameTeam: 'Pixel Studio',
            ),
            Teams(
              nameTeam: 'Samsan Tech',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: ListView(
        children: [
          header(),
          search(),
          progress(),
          notification(),
          myTeam(),
        ],
      ),
    );
  }
}
