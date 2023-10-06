import 'payment.dart';

class CashPayment extends PaymentMethod {
  CashPayment(String name) : super(name);

  @override
  void processPayment(double amount) {}
}
