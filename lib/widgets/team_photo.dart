import 'package:flutter/material.dart';

// Theme
import '../theme.dart';

class TeamPhoto extends StatelessWidget {
  int index;
  String urlImage;

  TeamPhoto(this.index, this.urlImage);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: index * 30),
      decoration: BoxDecoration(
          border: Border.all(
            color: whiteColor,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(
            100,
          )),
      child: ClipOval(
        child: Image.asset(
          '${urlImage}',
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
