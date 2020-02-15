import 'package:teas_store/src/blocs/product_category/product_category.provider.dart';
import 'package:teas_store/src/models/products/product_category.model.dart';
import 'package:teas_store/src/models/products/product_item.model.dart';

class ProductCategoryRepository {
  final ProductCategoryProvider _provider = ProductCategoryProvider();

  Future<List<ProductCategory>> fetchAllCategory() =>
      _provider.fetchAllCategory();

  Future<List<ProductCategory>> fetchFeatureCateById(String categoryId) =>
      _provider.fetchFeaturedCategoryById(categoryId);

  Future<List<ProductItem>> fetchProductById(String categoryId) =>
      _provider.fetchProductById(categoryId);
}
