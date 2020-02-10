import 'package:teas_store/src/blocs/product_category/dummy_data/pro_category.mock_data.dart';
import 'package:teas_store/src/models/products/product_category.model.dart';

class ProductCategoryProvider {
  List<ProductCategory> _productCategories =
      ProductCategoryMockData().productCategory;

  Future<List<ProductCategory>> fetchAllCategory() async {
    return _productCategories;
  }

  Future<List<ProductCategory>> fetchFeaturedCategoryById(
      String categoryId) async {
    await Future.delayed(Duration(microseconds: 500));
    final ProductCategory _filter =
        _productCategories.firstWhere((item) => item.id == categoryId);
    return _filter.featuredCategory;
  }
}
