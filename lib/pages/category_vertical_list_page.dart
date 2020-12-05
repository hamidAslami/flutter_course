import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/pages/home_page.dart';
import 'package:flutter_course_shop_ui/pages/main_page.dart';
import 'package:flutter_course_shop_ui/theme/dimens.dart';
import 'package:flutter_course_shop_ui/theme/text_style.dart';
import 'package:flutter_course_shop_ui/widgets/category_vertical_widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../fakeData.dart';

class CategoryListPage2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CategoryListPageState();
}

class CategoryListPageState extends State<CategoryListPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        elevation: largeSize(context),
        title: Body1txt(
          "Category",
          color: Color(0xff222455),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Color(0xff222455),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: largeSize(context)),
            child: SvgPicture.asset("assets/search icon.svg"),
            width: largeSize(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          addAutomaticKeepAlives: true,
          itemBuilder: (context, index) =>
              categoryVerticalListWidgets(listCategory()[index], context),
          itemCount: listCategory().length,
        ),
      ),
    );
  }
}
