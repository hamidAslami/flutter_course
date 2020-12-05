import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/pages/food_details_page.dart';
import 'package:flutter_course_shop_ui/pages/my_favourite_food_page.dart';
import 'package:flutter_course_shop_ui/pages/my_profile_page.dart';
import 'package:flutter_course_shop_ui/pages/new_review_page.dart';
import 'package:flutter_course_shop_ui/pages/notifications_page.dart';
import 'package:flutter_course_shop_ui/pages/see_all_food_page.dart';
import 'package:line_icons/line_icons.dart';

import 'home_page.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int index = 0;

  // ignore: missing_return
  Widget bodyWidget() {
    switch (index) {
      case 0:
        return HomePage();
      case 1:
        return MyFavouriteFoodPage();
      case 2:
        return NewReviewPage();
      case 3:
        return NotificationsPage();
      case 4:
        return MyProfilePage();
      default:
        return HomePage();
    }
  }

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        selectedItemColor: Color(0xff5663ff),
        currentIndex: index,
        unselectedItemColor: Colors.grey.shade400,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
              title: Text('Home'), icon: Icon(LineIcons.home)),
          BottomNavigationBarItem(
              title: Text('My Favorite'), icon: (Icon(LineIcons.bookmark))),
          BottomNavigationBarItem(
              title: Text('Add'), icon: Icon(LineIcons.plus_circle)),
          BottomNavigationBarItem(
              title: Text('Notification'),
              icon: Icon(Icons.notifications_none)),
          BottomNavigationBarItem(
              title: Text('My Profile'), icon: Icon((LineIcons.user))),
        ],
      ),
      body: bodyWidget(),
    );
  }
}
