import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:teas_store/src/bases/bloc/bloc_base.dart';
import 'package:teas_store/src/models/products/product_category.model.dart';

import 'product_category.repo.dart';

class ProductCategoryBloc implements BlocBase {
  final _productRepository = ProductCategoryRepository();
  final _getAll = PublishSubject<List<ProductCategory>>();
  final _getFeatureCateById = PublishSubject<List<ProductCategory>>();

  Stream<List<ProductCategory>> get fetchAll => _getAll.stream;

  Stream<List<ProductCategory>> get fetchFeatureCate =>
      _getFeatureCateById.stream;

  fetchAllCategory() async {
    List<ProductCategory> _listCategory =
        await _productRepository.fetchAllCategory();
    if (_listCategory.length > 0) {
      _getAll.sink.add(_listCategory);
    } else {
      _getAll.sink.addError('No data');
    }
  }

  fetchFeatureCateById(String categoryId) async {
    List<ProductCategory> _istFeaturedCate =
        await _productRepository.fetchFeatureCateById(categoryId);
    if (_istFeaturedCate.length > 0) {
      _getFeatureCateById.sink.add(_istFeaturedCate);
    } else {
      _getFeatureCateById.sink.addError('No data');
    }
  }

  @override
  void dispose() {
    _getAll.close();
    _getFeatureCateById.close();
  }
}
