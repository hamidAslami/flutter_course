import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/theme/dimens.dart';
import 'package:flutter_course_shop_ui/theme/text_style.dart';
import 'package:flutter_course_shop_ui/widgets/food_card.dart';
import 'package:flutter_course_shop_ui/widgets/search_box.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';

import '../fakeData.dart';

class SeeAllFoodPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SeeAllFoodPageState();
}

class SeeAllFoodPageState extends State<SeeAllFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        title: Subtitle2txt("Trending Restaurants"),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: mediumSize(context)),
          child: Column(
            children: [
              Container(
                child: searchBoxWidget("Search"),
                margin: EdgeInsets.symmetric(horizontal: standardSize(context),vertical: mediumSize(
                    context)),
              ),
              ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: mediumSize(context)),
                scrollDirection: Axis.vertical,
                itemCount: foodList().length,
                itemBuilder: (context, index) =>
                    foodCardWidget(foodList()[index], context),
                physics: NeverScrollableScrollPhysics(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
