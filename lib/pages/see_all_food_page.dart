import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/theme/dimens.dart';
import 'package:flutter_course_shop_ui/theme/text_style.dart';
import 'package:flutter_course_shop_ui/widgets/food_card.dart';
import 'package:flutter_course_shop_ui/widgets/search_box.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';

import '../fakeData.dart';

class SeeAllFoodPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => SeeAllFoodPageState();

}

class SeeAllFoodPageState extends State<SeeAllFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: xxlargeSize(context)),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: standardSize(context) , left: standardSize(context) , bottom: xlargeSize(context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(child: SvgPicture.asset("assets/back ios.svg"),
                    width: 25,
                      height: 25,
                    ),
                    Expanded(child: SizedBox()),
                    Container(child: Subtitle2txt("Trending Restaurants"),margin: EdgeInsets.only(right: fullWidth(context) / 7),),
                  ],
                ),
              ),
              Container(child: searchBoxWidget("Search"),
                margin: EdgeInsets.symmetric(horizontal: standardSize(context)),
              ),
              ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: foodList().length,
                itemBuilder: (context, index) => foodCardWidget(foodList()[index], context),
                physics: NeverScrollableScrollPhysics(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
