import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/models/notifications_model.dart';



Widget notificationsBoxWidget(NotificationModel notifications,BuildContext context) {
  return Container(
    child: Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 12,horizontal: 8),

          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  notifications.image,
                ),
              )),
        ),
        Expanded(
          flex: 3,
          child: Container(
            margin: EdgeInsets.only(left: 6,right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    notifications.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                Text(
                  notifications.subtitle,
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.black54,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),

        Expanded(
          flex: 1,
          child: Container(
            child: Text(
              notifications.time,
              style: TextStyle(
                  fontWeight: FontWeight.w400, fontSize: 12, color: Colors.black54),
            ),
          ),
        )
      ],
    ),
  );
}
