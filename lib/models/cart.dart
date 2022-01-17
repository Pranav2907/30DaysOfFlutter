

// ignore_for_file: unused_field, unnecessary_null_comparison

import 'package:flutter_catalog/models/catalog.dart';

class CartModel {
  //catalog field
late CatalogModel _catalog; /// check this once
  
  //collection of IDs - store Ids of each item
  final List<int> _itemIds = [];

  //Get Catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //get items in cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // Get total Price
  num get totalPrice => items.fold(0, (total, current) => total+current.price);

  //Add item

  void add(Item item){
    _itemIds.add(item.id);
  }

  //revmove item
  void remove(Item item){
    _itemIds.remove(item.id);
  }
}
