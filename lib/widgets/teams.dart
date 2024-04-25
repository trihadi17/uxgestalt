import 'package:flutter/material.dart';

// Theme
import '../theme.dart';

// Widget
import 'team_photo.dart';

class Teams extends StatelessWidget {
  final String nameTeam;
  final photos = [
    'assets/teams1.png',
    'assets/teams2.png',
    'assets/teams3.png',
    'assets/teams4.png',
  ];

  Teams({this.nameTeam = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: Row(
        children: [
          ClipOval(
            child: Image.network(
              'https://ui-avatars.com/api/?name=${nameTeam}&color=FFFFFF&background=5066EA&size=150',
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${nameTeam}',
                style: navyTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
              Text(
                'You have 5 Members',
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Spacer(),
          Stack(
            children: photos
                .asMap()
                .map((index, urlImage) {
                  final value = TeamPhoto(index, urlImage);
                  return MapEntry(index, value);
                })
                .values
                .toList(),
          )
        ],
      ),
    );
  }
}
