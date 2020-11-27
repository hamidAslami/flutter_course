import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/fakeData.dart';
import 'package:flutter_course_shop_ui/theme/dimens.dart';
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
        title: Text(
          "Notifications",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.w400),
        ),
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
