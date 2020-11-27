import 'package:flutter_course_shop_ui/models/catgoryModel.dart';
import 'package:flutter_course_shop_ui/models/food_model.dart';
import 'package:flutter_course_shop_ui/models/member_model.dart';

import 'models/notifications_model.dart';

List foodList() {
  List<Food> foods = new List();

  // اینجا هر چقدر لازم داشتین میتونین غذای فیک ادد کنید

  foods.add(Food("test", "Test", 10, memberList(), "test", 5));

  return foods;
}

List memberList() {
  List<Member> members = new List();

  // اینجا هر چقدر لازم داشتین میتونین آدم فیک ادد کنید

  members.add(Member("", "test"));

  return members;
}



List categoryList() {
  List<Category> categories = new List();

  categories.add(Category("image", "title"));

  return categories;
}
List notificationList(){
  List<NotificationModel>notifications=new List();
  notifications.add(NotificationModel(image: "assets/friend1.jpg",title: "Branson Hawkins",subtitle: "Start following you",time: "5:30 am"),);
  notifications.add(NotificationModel(image: "assets/قاشق2.jpg",title: "Foodybite",subtitle: "we found 10 new restaurant near you",time: "6:30 pm"),);
  notifications.add(NotificationModel(image: "assets/friend2.jpg",title: "Joliet Hooper",subtitle: "Checked in at Happy Bones",time: "yesterday"),);
  notifications.add(NotificationModel(image: "assets/friend3.jpg",title: "Branson Hawkins",subtitle: "Start following you",time: "yesterday"),);
  notifications.add(NotificationModel(image: "assets/friend4.jpg",title: "Anabel Leach",subtitle: "Checked in at Uncle Boons",time: "26/05/2019"),);
  notifications.add(NotificationModel(image: "assets/friend5.jpg",title: "Ashlee Rollins",subtitle: "Start following you",time: "26/05/2019"),);
  notifications.add(NotificationModel(image: "assets/friend6.jpg",title: "Abbigail Carter",subtitle: "Checked in at Miller's Cafe",time: "26/05/2019"),);
  notifications.add(NotificationModel(image: "assets/friend7.jpg",title: "Deven Berry ffgfdgfdgfdgfdfgdfgdfgdfgdgfdfgZ",subtitle: "Start following you",time: "25/05/2019"),);
  notifications.add(NotificationModel(image: "assets/friend8.jpg",title: "Branson Hawkins",subtitle: "Start following you",time: "5:30 am"),);

return notifications;

}