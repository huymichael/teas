import 'package:flutter/material.dart';
import 'package:teas_store/src/views/screens/home/widgets/product_item_builder.widget.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({@required this.categoryId, @required this.categoryName});

  final String categoryId;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
        centerTitle: true,
      ),
      body: _buildProductList(),
    );
  }

  _buildProductList() => ProductBuilder(
        categoryId: categoryId,
      );
}
