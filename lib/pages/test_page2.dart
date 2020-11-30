import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/pages/home_page.dart';
import 'package:flutter_course_shop_ui/theme/text_style.dart';

class TestPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: Center(
        child: RaisedButton(
            child: Subtitle1txt("click"),
            onPressed: () {

              Navigator.pop(context);

            }),
      ),
    );
  }
}
