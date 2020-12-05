import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/pages/food_details_page.dart';
import 'package:flutter_course_shop_ui/theme/dimens.dart';
import 'package:flutter_course_shop_ui/theme/text_style.dart';
import 'package:flutter_course_shop_ui/widgets/food_card.dart';
import 'package:flutter_svg/svg.dart';

import '../fakeData.dart';

class MyFavouriteFoodPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyFavouriteFoodPageState();
}

class MyFavouriteFoodPageState extends State<MyFavouriteFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: largeSize(context),
        title: Body1txt(
          "My Favourite",
          color: Color(0xff222455),
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: largeSize(context)),
            child: SvgPicture.asset("assets/search icon.svg"),
            width: largeSize(context),
          ),
        ],
      ),
      body: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => FoodDetails(),));
        },
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: mediumSize(context)),
            scrollDirection: Axis.vertical,
            itemCount: foodList().length,
            itemBuilder: (context, index) =>
                foodCardWidget(foodList()[index], context),
          ),
        ),
      ),
    );
  }
}
