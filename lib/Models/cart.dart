import 'dart:ffi';

import 'package:e_commerce_app/Models/catalog.dart';

class CartModel {
  static final cartModel = CartModel._internal();

  CartModel._internal();
  factory CartModel() => cartModel;

  late CatelogModel _catelog;

  final List<int> _itemids = [];
  CatelogModel get catelog => _catelog;
  set catelog(CatelogModel newCatelog) {
    assert(newCatelog != null);
    _catelog = newCatelog;
  }

  List<Item> get items => _itemids.map((id) => _catelog.getById(id)).toList();
  num get totalPrice =>
      items.fold(0, (total, current) => total + int.parse(current.price));

  void add(Item item) {
    _itemids.add(item.id);
  }

  void remove(Item item) {
    _itemids.remove(item.id);
  }
}
