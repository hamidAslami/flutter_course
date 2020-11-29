import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/models/notifications_model.dart';
import 'package:flutter_course_shop_ui/theme/dimens.dart';
import 'package:flutter_course_shop_ui/theme/text_style.dart';



Widget notificationsBoxWidget(NotificationModel notifications,BuildContext context) {
  return Container(
    child: Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 9,horizontal: 8),

          width: fullWidth(context)/6,
          height: fullWidth(context)/6,
          decoration: BoxDecoration(
            color: Colors.white,
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  notifications.image,
                ),
              )),
        ),//image
        Expanded(
          flex: 3,
          child: Container(
            margin: EdgeInsets.only(left: 6,right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Container(
                  margin: EdgeInsets.only(bottom: smallSize(context),),
                  child: Body1txt(
                    notifications.title,


                  ),
                ),
                Captiontxt(
                  notifications.subtitle,

                ),
              ],
            ),
          ),
        ),

        Expanded(
          flex: 1,
          child: Container(
            child: Captiontxt(
              notifications.time,

            ),
          ),
        )
      ],
    ),
  );
}
