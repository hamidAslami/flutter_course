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
                height: fullHeight(context) / 1.8,
                width: fullWidth(context),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: foodList().length,
                  itemBuilder: (context, index) => foodCardWidget(foodList()[0], context),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}