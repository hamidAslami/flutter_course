import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/models/category_vertical_list_model.dart';
import 'package:flutter_course_shop_ui/theme/dimens.dart';
import 'package:flutter_course_shop_ui/theme/text_style.dart';

Widget categoryVerticalListWidgets(
    CategoryVerticalList categoryVerticalList, BuildContext context) {
  return Container(
      margin: EdgeInsets.all(mediumSize(context)),
      width: fullWidth(context),
      height: fullHeight(context) / 9,
      child: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  categoryVerticalList.foodImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Subtitle2txt(
              categoryVerticalList.foodModel,
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.all(mediumSize(context)),
            child: Align(
              alignment: Alignment.centerRight,
              child: Image(
                image:
                    NetworkImage("https://uupload.ir/files/zdcu_rectangle.png"),
                height: xlargeSize(context),
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          gradient: LinearGradient(
              colors: [
                categoryVerticalList.startColor,
                categoryVerticalList.endColor
              ],
              begin: Alignment(2, 0),
              tileMode: TileMode.clamp,
              end: Alignment(0, 2))));
}
