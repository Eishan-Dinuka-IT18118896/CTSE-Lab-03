import 'package:flutter/material.dart';
import 'package:labsheet_03/data.dart';

class CartProvider extends ChangeNotifier {
  final Set<Item> _items = {};

  //Get set of items
  Set<Item> get items => _items;

  double get total => _items.fold(
      0.0,
      (previousValue, item) =>
          previousValue + item.price); //0.0 is initial value

  bool isItemAdded(Item item) {
    //return a boolean
    return _items.contains(item);
  }

  void addItem(Item item) {
    _items.add(item);
    notifyListeners();
  }

  void removeItem(Item item) {
    _items.remove(item);
    notifyListeners();
  }
}
