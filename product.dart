abstract class Product {
  List<String>? product_name;
  List<double>? product_price;
  int? index;
  bool is_available;
  List<String>? exp_date;
  int? valid_month;
  Product(this.is_available, this.product_name, this.product_price,
      this.valid_month, this.exp_date, this.index);
  void ShowDetails(index);
  void checkAvailability(is_available);
}
