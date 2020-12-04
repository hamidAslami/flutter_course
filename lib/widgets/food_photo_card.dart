import 'package:flutter/cupertino.dart';
import 'package:flutter_course_shop_ui/models/menu_photos_model.dart';
import 'package:flutter_course_shop_ui/theme/dimens.dart';

Widget foodPhotoWidget(MenuPhotos food,BuildContext context){
  return Container(
    margin: EdgeInsets.only(right: smallSize(context)),
    width: fullWidth(context)/2.5,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(food.foodImage),fit: BoxFit.cover
      ),
      borderRadius: BorderRadius.circular(mediumSize(context))
    ),
  );
}