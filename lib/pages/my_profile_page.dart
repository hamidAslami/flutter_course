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
        body: SingleChildScrollView(
      child: Center(
        child: Container(
          margin: EdgeInsets.only(top: xxlargeSize(context)),
          child: Column(
            children: [
              Headline5txt('My Profile'),
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
                        Subtitle2txt(
                          '250',
                          color: Color(0xff5663ff),
                        ),
                        Body1txt(
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
                        Subtitle2txt(
                          '100k',
                          color: Color(0xff5663ff),
                        ),
                        Body1txt(
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
                        Subtitle2txt(
                          '30',
                          color: Color(0xff5663ff),
                        ),
                        Body1txt(
                          'Following',
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ],
                ),
              ), // Status
              Container(
                margin: EdgeInsets.symmetric(horizontal: xxlargeSize(context)),
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
                          horizontal: largeSize(context),
                          vertical: mediumSize(context)),
                      child: Subtitle2txt(
                        'Edit Profile',
                        color: Colors.white,
                      ),
                    ), // Edit Profile
                    RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(xxSmallSize(context))),
                      color: Colors.white,
                      elevation: 2,
                      padding: EdgeInsets.symmetric(
                          horizontal: xxlargeSize(context),
                          vertical: mediumSize(context)),
                      child: Subtitle2txt(
                        'Setting',
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
