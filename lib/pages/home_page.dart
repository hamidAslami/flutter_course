import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/theme/dimens.dart';
import 'package:flutter_course_shop_ui/theme/text_style.dart';
import 'package:flutter_course_shop_ui/widgets/cateogry_card.dart';
import 'package:flutter_course_shop_ui/widgets/food_card.dart';
import 'package:flutter_course_shop_ui/widgets/member_card.dart';
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(top: xxlargeSize(context)),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(child: searchBoxWidget("Find Restaurants"),
              margin: EdgeInsets.symmetric(horizontal: standardSize(context)),
              ),
              Container(
                margin: EdgeInsets.only(right: standardSize(context) , left: standardSize(context) , top: mediumSize(context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Subtitle2txt("Trending Restaurants"),
                    Body2txt("See all (45)",color: Color(0xffb8c0d5),)
                  ],
                ),
              ), // title 1
              Container(
                height: fullHeight(context) / 2.3,
                width: fullWidth(context),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) => foodCardWidget(foodList()[index], context),
                ),
              ), // food card
              Container(
                margin: EdgeInsets.only(right: standardSize(context) , left: standardSize(context) , top: mediumSize(context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Subtitle2txt("Category"),
                    Body2txt("See all (9)",color: Color(0xffb8c0d5),)
                  ],
                ),
              ), // title 2
              Container(
                width: fullWidth(context),
                height: fullHeight(context) / 5.4,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) => categoryCard(categoryList()[index],context),
                ),
              ), // category card
              Container(
                margin: EdgeInsets.only(right: standardSize(context) , left: standardSize(context) , top: mediumSize(context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Subtitle2txt("Friends"),
                    Body2txt("See all (56)",color: Color(0xffb8c0d5),)
                  ],
                ),
              ), // title 3
              Container(
                width: fullWidth(context),
                height: fullHeight(context) / 8.6,
                // margin: EdgeInsets.symmetric(horizontal: standardSize(context)),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) => memberCardWidget(memberList()[index],context),
                ),
              ), // friends card
            ],
          ),
        ),
      ),
    );
  }
}