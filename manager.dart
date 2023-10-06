import 'human.dart';
import 'product.dart';

Product? product;

class Manager extends Human {
  Manager({required name, required address, required email, required phone})
      : super(name: name, address: address, phone: phone, email: email);
  @override
  void ShowInfo() {
    print(
        "hello,it's$name,nice to meet you ..you can contact us at $email,good luck");
  }

  void addProduct({required String name, required double price}) {
    if (name != product!.product_name) {
      product!.product_name!.add(name);
      print("product is added successfully!");
    } else {
      print("item not found!");
    }
  }

  void delpProduct({required String name}) {
    if (name != product!.product_name) {
      product!.product_name!.remove(name);
      print("product is removed");
    } else {
      print("item not found!");
    }
  }

  void updateProInfo({required String name, required double price}) {
    if (name != product!.product_name && price != product!.product_price) {
      name = product!.product_name![-1];
      price = product!.product_price![-1];
    }
  }

  void decidePrice({required String name, required double price}) {
    if (price >= 0 && name == product!.product_name) {
      product!.product_price!.add(price);
    }
  }
}
