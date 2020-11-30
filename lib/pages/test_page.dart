import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/theme/dimens.dart';
import 'package:flutter_course_shop_ui/widgets/cateogry_card.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: fullWidth(context),
        // child: Center(
        //   child: categoryCard(),
        // ),
        height: fullHeight(context),
      ),
    );
  }
}
