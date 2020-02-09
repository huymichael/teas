import 'package:flutter/cupertino.dart';

import 'product_item.model.dart';

class ProductCategory {
  final String id;
  final String categoryName;
  final String categoryDesc;
  final String categoryImgUrl;
  final List<ProductCategory> featuredCategory;
  final List<ProductItem> productItems;

  ProductCategory(
      {@required this.id,
      this.categoryName,
      this.categoryDesc,
      this.categoryImgUrl,
      this.featuredCategory,
      this.productItems});
}
