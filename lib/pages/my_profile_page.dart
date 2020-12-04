import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/fakeData.dart';
import 'package:flutter_course_shop_ui/theme/dimens.dart';
import 'package:flutter_course_shop_ui/theme/text_style.dart';
import 'package:flutter_course_shop_ui/widgets/food_card.dart';

class MyProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyProfilePageState();
}

class MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.grey.shade50,
        leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
        centerTitle: true,
        title: Subtitle2txt('Profile'),
      ),
        body: SingleChildScrollView(
      child: Center(
        child: Container(
          margin: EdgeInsets.only(top: xlargeSize(context)),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: xxlargeSize(context)),
                width: fullWidth(context) / 2.8,
                height: fullHeight(context) / 5,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/friend7.jpg'),
                        fit: BoxFit.cover)),
              ),
              Container(
                margin: EdgeInsets.only(top: largeSize(context)),
                child: Column(
                  children: [
                    Headline5txt('John Williams'),
                    Body1txt(
                      'john.williams@gmail.com',
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    vertical: xlargeSize(context),
                    horizontal: mediumSize(context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Body1txt(
                          '250',
                          color: Color(0xff5663ff),
                        ),
                        Body2txt(
                          'Reviews',
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Container(
                      width: 0.5,
                      height: 36,
                      color: Colors.grey.shade400,
                    ),
                    Column(
                      children: [
                        Body1txt(
                          '100k',
                          color: Color(0xff5663ff),
                        ),
                        Body2txt(
                          'Followers',
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Container(
                      width: 0.5,
                      height: 36,
                      color: Colors.grey.shade400,
                    ),
                    Column(
                      children: [
                        Body1txt(
                          '30',
                          color: Color(0xff5663ff),
                        ),
                        Body2txt(
                          'Following',
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ],
                ),
              ), // Status
              Container(
                margin: EdgeInsets.symmetric(horizontal: xlargeSize(context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(xxSmallSize(context))),
                      color: Color(0xff5663ff),
                      padding: EdgeInsets.symmetric(
                          horizontal: xxlargeSize(context),
                          vertical: mediumSize(context)),
                      child: Body1txt(
                        'Follow',
                        color: Colors.white,
                      ),
                    ), // Edit Profile
                    RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey,width: 0.5),
                          borderRadius:
                              BorderRadius.circular(xxSmallSize(context))),
                      color: Colors.white,
                      elevation: 0,
                      padding: EdgeInsets.symmetric(
                          horizontal: xxlargeSize(context),
                          vertical: mediumSize(context)),
                      child: Body1txt(
                        'Back',
                        color: Color(0xff5663ff),
                      ),
                    ) // Setting
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: largeSize(context)),
                child: Divider(
                  color: Colors.grey.shade400,
                ),
              ),
              ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: mediumSize(context),vertical: 0),
                physics: NeverScrollableScrollPhysics(),
                addAutomaticKeepAlives: true,
                scrollDirection: Axis.vertical,
                itemCount: foodList().length,
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                    foodCardWidget(foodList()[index], context),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
