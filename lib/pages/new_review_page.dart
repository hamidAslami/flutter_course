import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/models/food_model.dart';
import 'package:flutter_course_shop_ui/theme/dimens.dart';
import 'package:flutter_course_shop_ui/theme/text_style.dart';
import 'package:flutter_course_shop_ui/widgets/food_card.dart';
import 'package:flutter_course_shop_ui/widgets/search_box.dart';

import '../fakeData.dart';

class NewReviewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NewReviewPageState();
}

class NewReviewPageState extends State<NewReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                child: Body1txt(
                  "Cancel",
                  color: Colors.grey,
                )),
            Subtitle2txt("New Review"),
            Container(
                child: Body1txt(
                  "Cancel",
                  color: Colors.grey,
                )),
          ],
        ),


      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: xlargeSize(context),
            left: largeSize(context),
            right: largeSize(context),
          ),
          child: Column(
            children: [
              searchBoxWidget("Le Bernadin"),
              foodCardWidget(foodList()[3],context),



               ] ),

          ),
        ),
      );

  }
}
