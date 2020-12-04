import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/models/rating_people_model.dart';
import 'package:flutter_course_shop_ui/theme/dimens.dart';
import 'package:flutter_course_shop_ui/theme/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

Widget ratingBoxWidget(ReviewRating ratings,BuildContext context){
  return Container(
    child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 9,horizontal: 8),
          width: fullWidth(context)/6,
          height: fullWidth(context)/6,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  ratings.photoPeople
                ),
              )),
        ),//image
        Expanded(
          flex: 3,
          child: Container(
            margin: EdgeInsets.only(left: 6,right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Container(
                  margin: EdgeInsets.only(bottom: smallSize(context),),
                  child: Body1txt(
                    ratings.peopleName
                  ),
                ),
                Text(ratings.peopleComment,maxLines: 1,style: GoogleFonts.openSans(
                  fontSize: 12,
                  color: Colors.grey
                ),)
              ],
            ),
          ),
        ),

        Container(
          width: fullWidth(context) / 7.5,
          height: fullHeight(context) / 25,
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
        )
      ],
    ),
  );
}