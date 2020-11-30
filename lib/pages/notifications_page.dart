import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/fakeData.dart';
import 'package:flutter_course_shop_ui/theme/text_style.dart';

import 'package:flutter_course_shop_ui/widgets/notifications_box.dart';

class NotificationsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NotificationsPageState();
}

class NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Subtitle2txt("Notifications"),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.all(0),
          shrinkWrap: true,
          itemBuilder: (context, index) =>
              notificationsBoxWidget(notificationList()[index], context),
          itemCount: notificationList().length,
        ),
      ),
    );
  }
}
