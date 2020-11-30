import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/models/catgoryModel.dart';
import 'package:flutter_course_shop_ui/theme/dimens.dart';
import 'package:flutter_course_shop_ui/theme/text_style.dart';

Widget categoryCard(Category category , BuildContext context) {
  return AspectRatio(
    aspectRatio: 1/1,
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: mediumSize(context),vertical: mediumSize(
          context)),
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(category.image, fit: BoxFit.cover),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Subtitle1txt(category.title,color: Colors.white,)
            )
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
                colors: [category.startColor , category.endColor],
                begin: Alignment(2, 0),
                tileMode: TileMode.clamp,
                end: Alignment(0, 2)))),
  );
}
