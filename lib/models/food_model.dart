import 'member_model.dart';

class Food {
  String imageBackground;
  String title;
  String nationalityFood;
  String member;
  double rating;
  double distance;
  List<Member> members;
  String address;

  Food(this.imageBackground,this.title, this.address, this.distance, this.members,
      this.nationalityFood, this.rating,this.member);
}
