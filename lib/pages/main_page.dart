import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/pages/my_profile_page.dart';
import 'package:flutter_course_shop_ui/theme/dimens.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int index = 0;

  // ignore: missing_return
  Widget bodyWidget() {
    switch (index) {
      /*case 0:
        return YourPage();
      case 1:
        return YourPage();
      case 2:
        return YourPage();
      case 3:
        return YourPage();*/
      case 4:
        return MyProfilePage();
      default:
        return MyProfilePage();
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
          BottomNavigationBarItem(title: Text('Home'), icon: Container(width: 36,child: SvgPicture.asset('assets/home page unselected.svg'))),
          BottomNavigationBarItem(
              title: Text('My Favorite'), icon: Container(width: 24,child: SvgPicture.asset('assets/favorite page unselected.svg'))),
          BottomNavigationBarItem(
              title: Text('Add'), icon: Container(width: xxlargeSize(context),child: SvgPicture.asset('assets/add icon.svg'))),
          BottomNavigationBarItem(
              title: Text('Notification'),
              icon: Container(width: 28,child: SvgPicture.asset('assets/notification page unselected.svg'))
          ),
          BottomNavigationBarItem(
              title: Text('My Profile'), icon: Container(width: 22,child: SvgPicture.asset('assets/profile page unselected.svg')))
        ],
      ),
      body: bodyWidget(),
    );
  }
}
