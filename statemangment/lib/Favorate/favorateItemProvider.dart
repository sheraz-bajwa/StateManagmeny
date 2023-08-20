import 'package:flutter/material.dart';

class FavItemProvider with ChangeNotifier {
  List _selectedItem = [];
  List get selectedItem => _selectedItem;

  void addItem(int value) {
    _selectedItem.add(value);
    notifyListeners();
  }

  void RemoveItem(int value) {
    _selectedItem.remove(value);
    notifyListeners();
  }
}
