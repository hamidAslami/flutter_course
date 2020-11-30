import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/theme/dimens.dart';
import 'package:flutter_course_shop_ui/theme/text_style.dart';
import 'package:flutter_course_shop_ui/widgets/food_card.dart';
import 'package:flutter_course_shop_ui/widgets/search_box.dart';

import '../fakeData.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();

}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: standardSize(context) , vertical: xxlargeSize(context)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            searchBoxWidget("Find Restaurants"),
            Container(
              margin: EdgeInsets.symmetric(vertical: xlargeSize(context)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Subtitle2txt("Trending Restaurants"),
                  Body2txt("See all (45)",color: Color(0xffb8c0d5),)
                ],
              ),
            ),
            Container(
              width: fullWidth(context),

              height: 200,
              color: Colors.blue,
              // child: ListView.builder(
              //   shrinkWrap: true,
              //   scrollDirection: Axis.horizontal,
              //   itemCount: foodList().length,
              //   itemBuilder: (context, index) => foodCardWidget(foodList()[index], context),
              // ),
            )
          ],
        ),
      ),
    );
  }
}