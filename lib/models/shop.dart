import 'package:coffee_shop/models/coffee.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  // coffee for Sale
  final List<Coffee> _shop = [
    // black coffee
    Coffee(
      name: 'Long Black',
      price: '25.000 Dong',
      imagePath: 'assets/images/black.png',
    ),
    // Flat White
    Coffee(
      name: "Flat White",
      price: "30.000 Dong",
      imagePath: "assets/images/flat.png",
    ),
    // Americano
    Coffee(
      name: "Americano",
      price: "25.000 Dong",
      imagePath: "assets/images/americano.png",
    ),
    // Pandan Latte
    Coffee(
      name: 'Pandan Latte',
      price: "30.000 Dong",
      imagePath: "assets/images/pandan.png",
    ),
    Coffee(
      name: 'Che',
      price: "20.000 Dong",
      imagePath: "assets/images/che.png",
    ),
  ];
  //user cart
  final List<Coffee> _userCart = [];
  //get user cart
  List<Coffee> get coffeeShop => _shop;
  //get coffee list
  List<Coffee> get userCart => _userCart;
  //add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
