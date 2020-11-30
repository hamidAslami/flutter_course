import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/theme/dimens.dart';
import 'package:flutter_course_shop_ui/theme/text_style.dart';
import 'package:flutter_course_shop_ui/widgets/cateogry_card.dart';
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
      body: SingleChildScrollView(
        child: Container(
          width: fullWidth(context),
          height: fullHeight(context),
          margin: EdgeInsets.symmetric( vertical: xxlargeSize(context)),
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
                height: fullHeight(context) / 7,
                width: fullWidth(context),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) => categoryCard(categoryList()[index]),
                ),
              ), // food card
            ],
          ),
        ),
      ),
    );
  }
}