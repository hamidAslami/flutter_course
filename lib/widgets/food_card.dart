import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/fakeData.dart';
import 'package:flutter_course_shop_ui/models/food_model.dart';
import 'package:flutter_course_shop_ui/theme/dimens.dart';
import 'package:flutter_course_shop_ui/theme/text_style.dart';

Widget foodCardWidget(Food foodWidget, BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(
        horizontal: largeSize(context), vertical: mediumSize(context)),
    width: double.infinity,
    height: fullHeight(context) / 2.5,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(mediumSize(context)),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300,
              spreadRadius: 0.4,
              blurRadius: 4,
              offset: Offset(0, 0.1))
        ]),
    child: Column(
      children: [
        Container(
          width: double.infinity,
          height: fullHeight(context) / 3.4,
          child: Stack(
            children: [
              Align(
                  alignment: Alignment(0, -1),
                  child: Container(
                      width: double.infinity,
                      child: Container(
                        child: Image.network(
                          foodWidget.imageBackground,
                          fit: BoxFit.cover,
                        ),
                      ))),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: mediumSize(context),
                    vertical: smallSize(context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: fullWidth(context) / 7.5,
                      height: fullHeight(context) / 25,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                spreadRadius: 0.5,
                                blurRadius: 2.3,
                                offset: Offset(0, 0))
                          ],
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Center(
                        child: Captiontxt(
                          'OPEN',
                          color: Colors.green,
                        ),
                      ),
                    ),
                    Container(
                      width: fullWidth(context) / 7.5,
                      height: fullHeight(context) / 25,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                spreadRadius: 0.5,
                                blurRadius: 2.3,
                                offset: Offset(0, 0))
                          ],
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star,
                              color: Colors.yellow.shade700,
                              size: largeSize(context)),
                          Captiontxt(
                            foodWidget.rating.toString(),
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
              vertical: smallSize(context), horizontal: smallSize(context)),
          child: Column(
            children: [
              Row(
                children: [
                  Subtitle1txt(foodWidget.title),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: xxSmallSize(context)),
                    padding: EdgeInsets.symmetric(
                        horizontal: xSmallSize(context), vertical: 3),
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
                      foodWidget.nationalityFood,
                      color: Colors.white,
                    ),
                  ), // Nationality Food
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: xSmallSize(context), vertical: 3),
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
                      foodWidget.distance.toString(),
                      color: Colors.white,
                    ),
                  ), // Distance
                  Stack(
                    children: [
                      Container(
                        width: smallSize(context),
                        height: smallSize(context),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white,width: 2
                          ),
                          image: DecorationImage(image: AssetImage(''))
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
              Container(
                alignment: AlignmentDirectional.centerStart,
                child: Body2txt(
                  foodWidget.address,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
