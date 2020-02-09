import 'package:flutter/cupertino.dart';

class ProductItem {
  final String itemId;
  final String itemName;
  final String itemDesc;
  final String itemImgUrl;
  final double itemPrice;

  ProductItem(
      {@required this.itemId,
      this.itemName,
      this.itemDesc,
      this.itemImgUrl,
      this.itemPrice});
}
