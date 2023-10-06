import 'cust-order.dart';
import 'human.dart';

class Customer extends Human {
  double? rate;
  Order? order;
  Customer(
      {required super.name,
      required super.phone,
      required super.email,
      required super.address});

  @override
  void ShowInfo() {
    print("it's $name");
  }

  void addOrder({required String name}) {
    order!.order_name!.add(name);
    print("order is added");
  }

  void cancelOrder({required String name}) {
    if (name != order!.order_name) {
      order!.order_name!.remove(name);
    }
  }

  void giveRate(rate) {
    if (rate <= 5) {
      print("$name gives $rate as rating to your service ");
    }
  }
}
