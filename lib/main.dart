import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/pages/new_review_page.dart';
import 'package:flutter_course_shop_ui/pages/notifications_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NotificationsPage(),
    );
  }
}
