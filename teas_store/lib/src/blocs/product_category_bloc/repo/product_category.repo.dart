import 'package:teas_store/src/blocs/product_category_bloc/provider/product_category.provider.dart';
import 'package:teas_store/src/models/products/product_category.model.dart';

class ProductCategoryRepository {
  final ProductCategoryProvider _provider = ProductCategoryProvider();

  Future<List<ProductCategory>> fetchAllCategory() => _provider.fetchAllCategory();
}
