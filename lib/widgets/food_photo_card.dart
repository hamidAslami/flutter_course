import 'package:flutter/cupertino.dart';
import 'package:flutter_course_shop_ui/models/menu_photos_model.dart';
import 'package:flutter_course_shop_ui/theme/dimens.dart';

Widget foodPhotoWidget(MenuPhotos food,BuildContext context){
  return Container(
    child: AspectRatio(
      aspectRatio: 16/10.5,
      child:
          Container(
    margin: EdgeInsets.only(right: smallSize(context)),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(food.foodImage),fit: BoxFit.cover
      ),
      borderRadius: BorderRadius.circular(mediumSize(context))
    ),))
  );
}