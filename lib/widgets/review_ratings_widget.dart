import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/models/rating_people_model.dart';
import 'package:flutter_course_shop_ui/theme/dimens.dart';
import 'package:flutter_course_shop_ui/theme/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

Widget ratingBoxWidget(ReviewRating ratings,BuildContext context){
  return Container(
    width: fullWidth(context),
    height: fullHeight(context)/10,
    child: Row(
      children: [
        Container(
          width: fullWidth(context)/5,
          height: fullHeight(context)/10,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(ratings.photoPeople),fit: BoxFit.cover
            ),
            shape: BoxShape.circle,
            border: Border.all(color: Colors.red,width: 10)
          ),
        ),
        Column(
          children: [
            Row(
              children: [
                Body1txt(ratings.peopleName),
                Expanded(child: SizedBox()),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: xSmallSize(context),vertical: xxSmallSize(context)),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            spreadRadius: 0.5,
                            blurRadius: 2.3,
                            offset: Offset(0, 0))
                      ],
                      borderRadius: BorderRadius.circular(mediumSize(context)),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star,
                          color: Colors.yellow.shade700,
                          size: largeSize(context)),
                      Captiontxt(
                        ratings.rating.toString(),
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(ratings.peopleComment,maxLines: 1,style: GoogleFonts.openSans(
              color: Colors.grey,
              fontSize: 12,
            ),)
          ],
        ),
      ],
    ),
  );
}