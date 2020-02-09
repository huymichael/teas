import 'package:flutter/cupertino.dart';
import 'package:teas_store/src/blocs/product_category_bloc/provider/product_category.provider.dart';
import 'package:teas_store/src/models/products/product_category.model.dart';

class ProductCategoryRepository {
  final ProductCategoryProvider provider;

  ProductCategoryRepository({@required this.provider})
      : assert(provider != null);

  Future fetchAllCategory() async {
    final List<ProductCategory> listCategory =
        await provider.fetchAllCategory();
    return listCategory;
  }
}
