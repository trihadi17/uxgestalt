import 'package:flutter/material.dart';

// Theme
import '../theme.dart';

class MessageNotification extends StatelessWidget {
  String name;
  String message;

  MessageNotification({this.name = '', this.message = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10,
      ),
      height: 90,
      decoration: BoxDecoration(
        color: Color(0xffF3F4FA),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(23),
        child: Row(
          children: [
            // ICON
            Icon(
              Icons.email_outlined,
              color: navyColor,
            ),

            SizedBox(
              width: 20,
            ),

            // Name, Message
            Container(
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${name}",
                    style: navyTextStyle.copyWith(fontSize: 14),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '${message}',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 1,
                  ),
                ],
              ),
            ),

            // ICON
            Spacer(),
            Icon(
              Icons.arrow_forward_ios_sharp,
              color: navyColor,
              size: 12,
            ),
          ],
        ),
      ),
    );
  }
}
