import 'package:flutter/material.dart';
import 'package:min_ecomerca_app/models/product.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    // product 1
    Product(
      name: "Messi Argentina",
      price: 119.99,
      description: "Messi Argentina Home Jersey",
      imagePath: "assets/messia.png",
    ),

    // Product 2
    Product(
      name: "Messi Barcelona",
      price: 109.99,
      description: "Messi's barcelona kit 2021",
      imagePath: "assets/messib.png",
    ),

    // product 3

    Product(
      name: "Messi PSG",
      price: 99.99,
      description: "Messi's PSG home kit 2022/23",
      imagePath: "assets/psg.png",
    ),

    // product 4
    Product(
      name: "Messi's Shoes",
      price: 84.99,
      description: "Messi's Addidas Collection ",
      imagePath: "assets/shoes.png",
    ),
  ];
  // user's cart
  List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }
  // remove item from cart
  void removeFromCart (Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
