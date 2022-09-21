import 'package:flutter/material.dart';
import 'Item.dart';

class Cart with ChangeNotifier
{
  final List<Item> _items = [];
  void add(Item item)
  {
    _items.add(item);
    notifyListeners();
  }
  void remove(Item item)
  {
    _items.remove(item);
    notifyListeners();
  }

  List<Item> get basketitem {
    return _items;
  }
}