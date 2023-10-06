import 'cust-order.dart';
import 'human.dart';

class ServiceTeam extends Human {
  ServiceTeam(
      {required super.name,
      required super.phone,
      required super.email,
      required super.address});

  @override
  void ShowInfo() {
    print("it's$name,phone:$phone,email:$email");
  }

  void deliverOrder() {
    print("order in your way ,don't worry!");
  }

  void takeDeliveryPrice({required double tax, required int indx}) {
    Order? order;
    order!.product_price![indx] = order.product_price![indx] * tax;
  }
}
