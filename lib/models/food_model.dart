import 'member_model.dart';

class Food {
  String title;
  String nationalityFood;
  double rating;
  int distance;
  List<Member> members;
  String address;

  Food(this.title, this.address, this.distance, this.members,
      this.nationalityFood, this.rating);
}
