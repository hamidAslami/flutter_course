import 'package:flutter/material.dart';
import 'package:flutter_course_shop_ui/models/catgoryModel.dart';
import 'package:flutter_course_shop_ui/models/food_model.dart';
import 'package:flutter_course_shop_ui/models/member_model.dart';

import 'models/category_vertical_list_model.dart';
import 'models/notifications_model.dart';

List foodList() {
  List<Food> foods = new List();

  // اینجا هر چقدر لازم داشتین میتونین غذای فیک ادد کنید

  foods.add(Food(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0fXqE-7EcbiLQlWhCSchbslx0T6jyPYcA9A&usqp=CAU',
      "Happy Bones",
      "394 Broome St, New York, NY 10013, USA",
      1.2,
      memberList(),
      "italian",
      4.5,
      "assets/friend3.jpg"));
  foods.add(Food(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_3v02R_4Kh3DfU1iC1Ta0F0Vk3Ecc_O2n0A&usqp=CAU',
      "Uncle Boons",
      "7 Spring St, New York, NY 10012, USA",
      2.5,
      memberList(),
      "chinese",
      4.3,
      "assets/friend3.jpg"));
  foods.add(Food(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0fXqE-7EcbiLQlWhCSchbslx0T6jyPYcA9A&usqp=CAU',
      "Happy Bones",
      "394 Broome St, New York, NY 10013, USA",
      1.2,
      memberList(),
      "italian",
      4.2,
      "assets/friend3.jpg"));
  foods.add(Food(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsYQhzCm91T20Z-_2TWSvR9OGn-zA7QIWW-w&usqp=CAU',
      "Pizza",
      "394 Broome St, New York, NY 10013, USA",
      2.4,
      memberList(),
      "italian",
      4.4,
      "assets/friend3.jpg"));
  foods.add(Food(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQabFqolj8H7WtcvIlSE02iUCJ1F7JCPJhD8g&usqp=CAU',
      "Beef",
      "394 Broome St, New York, NY 10013, USA",
      2,
      memberList(),
      "italian",
      4.3,
      "assets/friend3.jpg"));

  return foods;
}

List memberList() {
  List<Member> members = new List();

  // اینجا هر چقدر لازم داشتین میتونین آدم فیک ادد کنید

  members.add(Member("assets/friend2.jpg", ""));
  members.add(Member("assets/friend3.jpg", ""));
  members.add(Member("assets/friend1.jpg", ""));
  members.add(Member("assets/friend4.jpg", ""));
  members.add(Member("assets/friend5.jpg", ""));
  members.add(Member("assets/friend6.jpg", ""));

  return members;
}

List categoryList() {
  List<Category> categories = new List();

  categories.add(Category(
      "Italian",
      "https://mag.safarestan.com/wp-content/uploads/2017/12/%D8%BA%D8%B0%D8%A7%D9%87%D8%A7%DB%8C-%D8%A7%DB%8C%D8%AA%D8%A7%D9%84%DB%8C%D8%A7%DB%8C%DB%8C-696x522.jpg",
      Colors.red,
      Colors.blueAccent));
  categories.add(Category(
      "Chinese",
      "https://mstiran.com/resource/files/cache/attractions-china-chinese-dishes-top-7d1ac052003d71fbac0df3900ed61d91.jpg",
      Colors.red,
      Colors.deepPurpleAccent));
  categories.add(Category(
      "Maxican",
      "https://www.eligasht.com/Blog/wp-content/uploads/2018/07/beaf-taco.jpg",
      Colors.blueAccent,
      Colors.blue));

  return categories;
}

List notificationList() {
  List<NotificationModel> notifications = new List();
  notifications.add(
    NotificationModel(
        image: "assets/friend1.jpg",
        title: "Branson Hawkins",
        subtitle: "Start following you",
        time: "5:30  am"),
  );
  notifications.add(
    NotificationModel(
        image: "assets/قاشق2.jpg",
        title: "Foodybite",
        subtitle: "we found 10 new restaurant near you",
        time: "6:30  pm"),
  );
  notifications.add(
    NotificationModel(
        image: "assets/friend2.jpg",
        title: "Joliet Hooper",
        subtitle: "Checked in at Happy Bones",
        time: "yesterday"),
  );
  notifications.add(
    NotificationModel(
        image: "assets/friend3.jpg",
        title: "Branson Hawkins",
        subtitle: "Start following you",
        time: "yesterday"),
  );
  notifications.add(
    NotificationModel(
        image: "assets/friend4.jpg",
        title: "Anabel Leach",
        subtitle: "Checked in at Uncle Boons",
        time: "5:30  am"),
  );
  notifications.add(
    NotificationModel(
        image: "assets/friend5.jpg",
        title: "Ashlee Rollins",
        subtitle: "Start following you",
        time: "yesterday"),
  );
  notifications.add(
    NotificationModel(
        image: "assets/friend6.jpg",
        title: "Abbigail Carter",
        subtitle: "Checked in at Miller's Cafe",
        time: "7:30  am"),
  );
  notifications.add(
    NotificationModel(
        image: "assets/friend7.jpg",
        title: "Deven Berry ",
        subtitle: "Start following you",
        time: "yesterday"),
  );
  notifications.add(
    NotificationModel(
        image: "assets/friend8.jpg",
        title: "Branson Hawkins",
        subtitle: "Start following you",
        time: "5:30 am"),
  );

  return notifications;
}

List listCategory() {
  List<CategoryVerticalList> category = new List();
  category.add(CategoryVerticalList(
      "Italian",
      "https://images.ctfassets.net/81w9kb7f1jq4/7gyLrVI5ZxAHXyQDRvom8M/772c0cbc02160f9f6cc2c67274866298/LG_wildfire_trio_homepage_hero.jpg",
      Color(0xfff67275),
      Color(0xfff28b5a)));

  category.add(CategoryVerticalList(
      "Chinese",
      "https://images.squarespace-cdn.com/content/v1/588ca4ca29687f771600b238/1536805943840-TR6AYKZ6HZDKHT8M59XI/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/Life+Alive_Brookline%2C+MA_Food+01_fl7a2483_Photo+by+Abigail+Connor%2C+Courtesy+of+Life+Alive.JPG",
      Color(0xffd81010),
      Color(0xff9d44d2)));
  category.add(CategoryVerticalList(
      "Maxican",
      "https://uupload.ir/files/90nq_1.jpg",
      Color(0xff1142cc),
      Color(0xff2aa5d7)));

  category.add(CategoryVerticalList(
      "Thai",
      "https://www.expatica.com/app/uploads/sites/3/2015/08/dutch-indonesian-food-1920x1080.jpg",
      Color(0xff11a36b),
      Color(0xff28b6c1)));

  category.add(CategoryVerticalList(
      "Arabian",
      "https://www.itl.cat/pngfile/big/290-2906065_indian-food-wallpaper-hd.jpg",
      Color(0xffec6e16),
      Color(0xffc837a3)));

  category.add(CategoryVerticalList(
      "Indian",
      "https://media-cdn.tripadvisor.com/media/photo-s/1a/13/73/67/indonesian-food.jpg",
      Color(0xff3100e4),
      Color(0xffcf3c92)));

  category.add(CategoryVerticalList(
      "American",
      "https://i.pinimg.com/originals/6f/24/fe/6f24fe4c1a2986c0957ac69411db1793.jpg",
      Color(0xff1142cc),
      Color(0xff2aa5d7)));

  category.add(CategoryVerticalList(
      "Korean",
      "https://i.pinimg.com/736x/d4/9f/3c/d49f3cb4142b7557ce184e6e2d5974fe.jpg",
      Color(0xffff2330),
      Color(0xfffb876a)));

  return category;
}
