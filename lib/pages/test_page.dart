import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/pages/test_page2.dart';
import 'package:flutter_course_shop_ui/theme/text_style.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: RaisedButton(
            child: Subtitle1txt("click"),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TestPage2()));
            }),
      ),
    );
  }
}
