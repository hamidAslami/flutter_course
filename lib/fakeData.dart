import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/models/catgoryModel.dart';
import 'package:flutter_course_shop_ui/models/food_model.dart';
import 'package:flutter_course_shop_ui/models/member_model.dart';

import 'models/notifications_model.dart';

List foodList() {
  List<Food> foods = new List();

  // اینجا هر چقدر لازم داشتین میتونین غذای فیک ادد کنید

  foods.add(Food('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0fXqE-7EcbiLQlWhCSchbslx0T6jyPYcA9A&usqp=CAU',"Happy Bones", "394 Broome St, New York, NY 10013, USA", 1.2, memberList(), "italian", 4.7,"assets/friend3.jpg"));
  foods.add(Food('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_3v02R_4Kh3DfU1iC1Ta0F0Vk3Ecc_O2n0A&usqp=CAU',"Uncle Boons", "394 Broome St, New York, NY 10013, USA", 3, memberList(), "chinese", 4.9,"assets/friend3.jpg"));
  foods.add(Food('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0fXqE-7EcbiLQlWhCSchbslx0T6jyPYcA9A&usqp=CAU',"Mix pizza", "394 Broome St, New York, NY 10013, USA", 1, memberList(), "italian", 4.7,"assets/friend3.jpg"));
  foods.add(Food('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsYQhzCm91T20Z-_2TWSvR9OGn-zA7QIWW-w&usqp=CAU',"Pizza", "394 Broome St, New York, NY 10013, USA",2.4, memberList(), "italian", 4.4,"assets/friend3.jpg"));
  foods.add(Food('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQabFqolj8H7WtcvIlSE02iUCJ1F7JCPJhD8g&usqp=CAU',"Beef", "394 Broome St, New York, NY 10013, USA", 2, memberList(), "italian", 4.3,"assets/friend3.jpg"));

  return foods;
}

List memberList() {
  List<Member> members = new List();

  // اینجا هر چقدر لازم داشتین میتونین آدم فیک ادد کنید

  members.add(Member("assets/friend2.jpg", ""));
  members.add(Member("assets/friend3.jpg", ""));

  return members;
}



List categoryList() {
  List<Category> categories = new List();

  categories.add(Category("title" , "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0fXqE-7EcbiLQlWhCSchbslx0T6jyPYcA9A&usqp=CAU" , Colors.red , Colors.yellow));
  categories.add(Category("title" , "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0fXqE-7EcbiLQlWhCSchbslx0T6jyPYcA9A&usqp=CAU" , Colors.red , Colors.yellow));
  categories.add(Category("title" , "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0fXqE-7EcbiLQlWhCSchbslx0T6jyPYcA9A&usqp=CAU" , Colors.red , Colors.yellow));

  return categories;
}
List notificationList(){
  List<NotificationModel>notifications=new List();
  notifications.add(NotificationModel(image: "assets/friend1.jpg",title: "Branson Hawkins",subtitle: "Start following you",time: "5:30  am"),);
  notifications.add(NotificationModel(image: "assets/قاشق2.jpg",title: "Foodybite",subtitle: "we found 10 new restaurant near you",time: "6:30  pm"),);
  notifications.add(NotificationModel(image: "assets/friend2.jpg",title: "Joliet Hooper",subtitle: "Checked in at Happy Bones",time: "yesterday"),);
  notifications.add(NotificationModel(image: "assets/friend3.jpg",title: "Branson Hawkins",subtitle: "Start following you",time: "yesterday"),);
  notifications.add(NotificationModel(image: "assets/friend4.jpg",title: "Anabel Leach",subtitle: "Checked in at Uncle Boons",time: "5:30  am"),);
  notifications.add(NotificationModel(image: "assets/friend5.jpg",title: "Ashlee Rollins",subtitle: "Start following you",time: "yesterday"),);
  notifications.add(NotificationModel(image: "assets/friend6.jpg",title: "Abbigail Carter",subtitle: "Checked in at Miller's Cafe",time: "7:30  am"),);
  notifications.add(NotificationModel(image: "assets/friend7.jpg",title: "Deven Berry ",subtitle: "Start following you",time: "yesterday"),);
  notifications.add(NotificationModel(image: "assets/friend8.jpg",title: "Branson Hawkins",subtitle: "Start following you",time: "5:30 am"),);

return notifications;

}