import 'package:teas_store/src/blocs/product_category/dummy_data/product_category.mock_data.dart';
import 'package:teas_store/src/models/products/product_category.model.dart';
import 'package:teas_store/src/models/products/product_item.model.dart';

class ProductCategoryProvider {
  final List<ProductCategory> _productCategories =
      ProductCategoryMockData().productCategory;

  Future<List<ProductCategory>> fetchAllCategory() async {
    return _productCategories;
  }

  Future<List<ProductCategory>> fetchFeaturedCategoryById(
      String categoryId) async {
    await Future.delayed(Duration(microseconds: 500));
    final ProductCategory _filter = _productCategories
        .firstWhere((item) => item.id == categoryId, orElse: () => null);
    return _filter.featuredCategory;
  }

  Future<List<ProductItem>> fetchProductById(String categoryId) async {
    List<ProductItem> _result = [];
    for (final cateItem in _productCategories) {
      if (cateItem.id == categoryId) {
        _result = cateItem.productItems;
      } else if ((cateItem?.featuredCategory ?? []).isNotEmpty) {
        _result = _checkFeaturedCategory(cateItem.featuredCategory, categoryId);
        print(_result);
      }
    }
    return _result;
  }

  _checkFeaturedCategory(
      List<ProductCategory> featuredCategoryList, String categoryId) {
    for (final featuredCateItem in featuredCategoryList) {
      if (featuredCateItem.id == categoryId) {
        return featuredCateItem.productItems;
      } else if ((featuredCateItem?.featuredCategory ?? [].isNotEmpty)) {
        return _checkFeaturedCategory(
            featuredCateItem.featuredCategory, categoryId);
      }
    }
  }
}
