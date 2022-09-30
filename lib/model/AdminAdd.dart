import 'package:amazon/model/Product.dart';
import 'package:flutter/material.dart';

class ProductAdd with ChangeNotifier
{
  final List<Product> _productList = [];
  void add(Product product)
  {
    _productList.add(product);
    notifyListeners();
  }
  void remove(Product product)
  {
    _productList.remove(product);
    notifyListeners();
  }

  List<Product> get newbasket {
    return _productList;
  }
}