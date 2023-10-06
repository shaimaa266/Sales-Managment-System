import 'payment.dart';
import 'product.dart';

class Order extends Product {
  List<String>? order_name;

  Order(super.is_available, super.product_name, super.product_price,
      super.valid_month, super.exp_date, super.index);

  void processPayment(PaymentMethod paymentMethod) {}

  @override
  void ShowDetails(index) {
    {
      if (product_name!.length >= index) {
        print(
            "product details:-name:$product_name[$index],price:$product_price[$index],expiry date:$exp_date[$index],it's valid for $valid_month months");
      }
    }
  }

  @override
  void checkAvailability(is_available) {
    if (is_available) {
      print("${product_name![-1]} is available");
    }
  }
}
