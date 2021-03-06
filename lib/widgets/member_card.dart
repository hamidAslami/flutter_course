import 'package:flutter/cupertino.dart';
import 'package:flutter_course_shop_ui/models/member_model.dart';
import 'package:flutter_course_shop_ui/theme/dimens.dart';

Widget memberCardWidget(Member member, BuildContext context) {
  return Container(
    width: fullWidth(context) / 6,
    height: fullWidth(context),
    margin: EdgeInsets.symmetric(
        horizontal: xxSmallSize(context),vertical: xSmallSize(context)),
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(member.image),
          fit: BoxFit.cover,
        )),
  );
}
