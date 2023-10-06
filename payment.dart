abstract class PaymentMethod {
  String name;

  PaymentMethod(this.name);

  void processPayment(double amount);
}
