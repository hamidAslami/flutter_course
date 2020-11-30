import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';

Widget searchBoxWidget(
  String hint,
) {
  return TextField(

    decoration: InputDecoration(
      enabledBorder:  OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide:  BorderSide(color: Colors.grey, width: 0.5),
      ),
        border: OutlineInputBorder(
          borderRadius:BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.indigo,width: 0.5)
        ),
        prefixIcon: Icon(LineIcons.search),
      hintText:  hint,
      suffixIcon: Icon(LineIcons.close),



        ),
  );
}
