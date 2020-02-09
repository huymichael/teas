import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:teas_store/src/bases/bloc/bloc_base.dart';
import 'package:teas_store/src/models/products/product_category.model.dart';

import 'product_category.repo.dart';

class ProductCategoryBloc implements BlocBase {
  final _productRepository = ProductCategoryRepository();
  final _fetchAll = PublishSubject<List<ProductCategory>>();

  Stream<List<ProductCategory>> get fetchAll => _fetchAll.stream;

  fetchAllCategory() async {
    List<ProductCategory> listCategory =
        await _productRepository.fetchAllCategory();
    _fetchAll.sink.add(listCategory);
  }

  @override
  void dispose() async {
    await _fetchAll.drain();
    _fetchAll.close();
  }
}

final productCategoryBloc = ProductCategoryBloc();
