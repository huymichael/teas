import 'package:flutter/material.dart';
import 'package:teas_store/src/views/screens/home/widgets/featured_category_builder.widget.dart';

class FeaturedCategoryScreen extends StatelessWidget {
  FeaturedCategoryScreen(
      {@required this.categoryId, @required this.categoryName});

  final String categoryId;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryName,
        ),
        centerTitle: true,
      ),
      body: _buildFeaturedCateList(),
    );
  }

  _buildFeaturedCateList() => FeaturedCategoryBuilder(
        categoryId: categoryId,
      );
}
