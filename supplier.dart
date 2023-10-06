import 'human.dart';
import 'product.dart';

class Supplier extends Human {
  List<Product> suppliedProducts;
  Supplier(
      {required super.name,
      required super.phone,
      required super.email,
      required super.address,
      required this.suppliedProducts});

  @override
  void ShowInfo() {
    print('Supplier: $name, Contact Email:$email');
    print('Supplied Products:');
    for (var product in suppliedProducts) {
      product.ShowDetails(product.index);
    }
  }

  void placeOrder(String product, int quantity) {
    print('$name is placing an order for $quantity units of $product.');
  }

  void receivePayment(double amount) {
    print('$name received a payment of $amount.');
    // Implement the payment handling logic here
  }
}
