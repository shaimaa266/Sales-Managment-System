import 'customer.dart';
import 'manager.dart';
import 'service-team.dart';

void main() {
  Customer customer = Customer(
      name: "ali",
      phone: "010254879",
      email: "ali23@gmail.com",
      address: "Giza");
  customer.addOrder(name: "lip gloss");
  customer.giveRate(4);
  Manager manager = Manager(
      name: "nour",
      address: "cairo",
      email: "nourali@yahoo.com",
      phone: "0100548729");
  manager.addProduct(name: "mascara", price: 350.5);
  ServiceTeam khalid = ServiceTeam(
    name: "khalid",
    phone: "01025458",
    email: "khalid@gmail.com",
    address: "aswan",
  );
  khalid.deliverOrder();
}
