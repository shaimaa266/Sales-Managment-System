import 'payment.dart';

class CreditCardPayment extends PaymentMethod {
  String cardNumber;

  CreditCardPayment(String name, this.cardNumber) : super(name);

  @override
  void processPayment(double amount) {
    print(
        '$name Credit Card Payment of \$${amount.toStringAsFixed(2)} processed.');
  }
}
