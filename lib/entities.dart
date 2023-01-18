import 'package:objectbox/objectbox.dart';

@Entity()
class ShopOrder {
  int id;
  int price;

  ShopOrder({
    this.id = 0,
    required this.price,
  });
}

class Customer {}
