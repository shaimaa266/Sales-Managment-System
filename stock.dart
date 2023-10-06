import 'product.dart';

class Stock {
  List<Product> productsInStock;
  String name;
  String description;
  int quantity;
  double price;

  Stock(
      {required this.name,
      required this.description,
      required this.price,
      required this.quantity,
      required this.productsInStock});

  void displayStockInfo() {
    print('Products in Stock:');
    for (var product in productsInStock) {
      product.ShowDetails(product.index);
    }
  }

  void checkExpairy() {
    print(" don't forget !it's time to expire");
  }

  void addStock(int quantityToAdd) {
    quantity += quantityToAdd;
    print('$quantityToAdd units of $name added to stock.');
  }

  void sellStock(int quantityToSell) {
    if (quantity >= quantityToSell) {
      quantity -= quantityToSell;
      print('$quantityToSell units of $name sold.');
    } else {
      print('Insufficient stock of $name to sell.');
    }
  }
}
