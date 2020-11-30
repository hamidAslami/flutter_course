import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_course_shop_ui/pages/home_page.dart';
import 'package:flutter_course_shop_ui/pages/main_page.dart';
import 'package:flutter_course_shop_ui/pages/my_profile_page.dart';
import 'package:flutter_course_shop_ui/pages/new_review_page.dart';
import 'package:flutter_course_shop_ui/pages/notifications_page.dart';
import 'package:flutter_course_shop_ui/pages/test_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}
