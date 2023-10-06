import 'dart:io';
import 'human.dart';
import 'product.dart';

class MarketingManager extends Human {
  double? badget;
  String? Strarting_date;
  int? period;

  MarketingManager(
      {required super.name,
      required super.phone,
      required super.email,
      required super.address});

  @override
  void ShowInfo() {
    print("i'm $name,phone:$phone,email:$email");
  }

  void createCampain(
      {required String date, required double padget, required int time}) {
    Strarting_date = date;
    this.badget = badget;
    period = time;
    print(
        "Campain starts at$Strarting_date ..lasts for $period,it costs $badget dollars,we wish you enjoj ");
  }

  void makeOffers() {
    print("enter offer value");
    var input_offerValue = double.parse(stdin.readLineSync()!);
    double offer_value = input_offerValue;
    Product? product;
    product!.product_price![0] *= offer_value;
  }
}
