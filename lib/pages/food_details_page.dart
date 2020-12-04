import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/fakeData.dart';
import 'package:flutter_course_shop_ui/theme/dimens.dart';
import 'package:flutter_course_shop_ui/theme/text_style.dart';
import 'package:flutter_course_shop_ui/widgets/food_photo_card.dart';
import 'package:flutter_course_shop_ui/widgets/notifications_box.dart';
import 'package:flutter_course_shop_ui/widgets/review_ratings_widget.dart';

class FoodDetails extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FoodDetailsState();
}

class FoodDetailsState extends State<FoodDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
      SliverAppBar(
          expandedHeight: fullHeight(context) / 2.5,
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              children: [
                Positioned.fill(
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROBHwNgLWW9SMGfrx9sbCkCs0X7P9RDZji7w&usqp=CAU',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: largeSize(context),
                  bottom: mediumSize(context),
                  right: xSmallSize(context),
                  left: xSmallSize(context),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: fullHeight(context) / 24,
                              ),
                              onPressed: () {}),
                          Expanded(
                            child: SizedBox(),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.share,
                              color: Colors.white,
                              size: fullHeight(context) / 24,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.bookmark_border,
                              color: Colors.white,
                              size: fullHeight(context) / 24,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      ClipRect(
                          child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                        child: Container(
                          width: fullWidth(context) / 1.25,
                          padding: EdgeInsets.symmetric(
                              vertical: xSmallSize(context)),
                          decoration: new BoxDecoration(
                              color: Colors.white10.withOpacity(0.2),
                              borderRadius:
                                  BorderRadius.circular(xxlargeSize(context))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: xxSmallSize(context),
                                      vertical: xxSmallSize(context)),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.phone,
                                    size: mediumSize(context),
                                  )),
                              Body2txt(
                                '+98 901 234 5678',
                                color: Colors.white,
                              ),
                              Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: xxSmallSize(context),
                                      vertical: xxSmallSize(context)),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.directions,
                                    size: mediumSize(context),
                                  )),
                              Body2txt(
                                'Direction',
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      )), // Phone Number & Direction
                    ],
                  ),
                )
              ],
            ),
          )),
      SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: largeSize(context),vertical: smallSize(context)),
            child: Column(
              children: [
                Row(children: [
                  Subtitle1txt('Happy Bones'),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: smallSize(context)),
                    padding: EdgeInsets.symmetric(
                        horizontal: xxSmallSize(context), vertical: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(xlargeSize(context)),
                        gradient: LinearGradient(
                          colors: [
                            (Colors.orange.shade400),
                            (Colors.pink.shade400),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        )),
                    child: Captiontxt(
                      'italian',
                      color: Colors.white,
                    ),
                  ), // ,
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal:xxSmallSize(context), vertical: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(xlargeSize(context)),
                        gradient: LinearGradient(
                          colors: [
                            (Colors.blueAccent.shade200),
                            (Colors.deepPurpleAccent.shade400),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        )),
                    child: Captiontxt(
                      '1.2 km',
                      color: Colors.white,
                    ),
                  ), // ,
                  Expanded(
                    child: SizedBox(),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: xSmallSize(context),vertical: xxSmallSize(context)),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              spreadRadius: 0.5,
                              blurRadius: 2.3,
                              offset: Offset(0, 0))
                        ],
                        borderRadius: BorderRadius.circular(mediumSize(context)),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star,
                            color: Colors.yellow.shade700,
                            size: largeSize(context)),
                        Captiontxt(
                          '4.5',
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),
                ],
                ),
                Container(
                  margin: EdgeInsets.only(top: xSmallSize(context)),
                  alignment: AlignmentDirectional.centerStart,
                  child: Body2txt(
                    "394 Broome St, New York, NY 10013, USA",
                    color: Colors.grey,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: xxSmallSize(context)),
                      alignment: AlignmentDirectional.centerStart,
                      child: Body2txt(
                        "Open Now",
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: xxSmallSize(context)),
                      alignment: AlignmentDirectional.centerStart,
                      child: Body2txt(
                        "daily time",
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      alignment: AlignmentDirectional.centerStart,
                      child: Body2txt(
                        "9:30 am to 11:30 pm",
                        color: Colors.red,
                      ),
                    ),
                    IconButton(icon: Icon(Icons.arrow_drop_down),onPressed: () {  },)
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: smallSize(context)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Subtitle2txt('Menu & Photos',color: Colors.grey.shade800,),
                      Body2txt('See all (32)',color: Colors.grey,)
                    ],
                  ),
                ),
                Container(
                  width: fullWidth(context),
                  height: fullHeight(context)/5.8,
                  child: ListView.builder(
                    padding: EdgeInsets.all(0),
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: menuFood().length,
                    itemBuilder: (context, index) =>
                        foodPhotoWidget(menuFood()[index], context),
                  ),
                ), // Menu & Photos
                Container(
                  margin: EdgeInsets.symmetric(vertical: smallSize(context)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Subtitle2txt('Review & Ratings',color: Colors.grey.shade800,),
                      Body2txt('See all (32)',color: Colors.grey,)
                    ],
                  ),
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.all(0),
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>
                        ratingBoxWidget(ratingPeople()[index], context),
                    itemCount: ratingPeople().length,
                  ),
                ),
              ],
            ),
          ),
      ),
            ])
    );
  }
}
