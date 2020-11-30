import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/models/food_model.dart';
import 'package:flutter_course_shop_ui/theme/dimens.dart';
import 'package:flutter_course_shop_ui/theme/text_style.dart';
import 'package:flutter_course_shop_ui/widgets/food_card.dart';
import 'package:flutter_course_shop_ui/widgets/search_box.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
              "Post",
              color: Colors.grey,
            )),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          margin: EdgeInsets.only(
            top: xlargeSize(context),
            left: largeSize(context),
            right: largeSize(context),
          ),
          child: Column(children: [
            searchBoxWidget("Le Bernadin"),
            foodCardWidget(foodList()[2], context),
            Container(
                margin: EdgeInsets.only(
                  top: smallSize(context),
                ),
                child: Subtitle2txt("Ratings")), //rating txt
            Container(
              alignment: Alignment.center,
              // ignore: missing_required_param
              child: RatingBar.builder(
                initialRating: 0,
                itemPadding: EdgeInsets.symmetric(horizontal: 5.0),
                itemCount: 5,
                direction: Axis.horizontal,
                itemBuilder: (context, index) => Icon(
                  Icons.star,
                  color: Colors.white54,
                ),
              ),
              margin: EdgeInsets.only(
                top: xlargeSize(context),
              ),
              width: double.infinity,
              height: fullWidth(context) / 6,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0XFFEEF7FF)),
            ), //rating box
            Container(
                margin: EdgeInsets.only(
                  top: mediumSize(context),
                ),
                child: Body1txt(
                  "Rate your experience",
                  color: Colors.black54,
                )), //txt
            Container(
                margin: EdgeInsets.only(
                  top: xlargeSize(context),
                  bottom: xlargeSize(context),
                ),
                child: Subtitle2txt("Review")),
            TextField(
              maxLines: 10,
              decoration: InputDecoration(
                  hintText: "Rate your experience",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey, width: 0.5))),
            ),
          ]),
        ),
      ),
    );
  }
}
