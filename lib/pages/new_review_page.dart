import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/theme/dimens.dart';
import 'package:flutter_course_shop_ui/widgets/search_box.dart';


class NewReviewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NewReviewPageState();
}

class NewReviewPageState extends State<NewReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: xlargeSize(context),
            left: xlargeSize(context),
            right: xlargeSize(context),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Cancel",style: TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.w400),),
                  Text("New Review",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500),),
                  Text("Post",style: TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.w400),),

                ],
              ),
              // searchBoxWidget(SearchBox(image: "assets/search icon.svg",text: "Le Bernardin",imageicon: "assets/close icon.svg")),


            ],
          ),
        ),
      ),
    );
  }
}
