import 'package:flutter/material.dart';
import 'package:teas_store/src/views/screens/home/widgets/category_builder.widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildCategoryList(),
    );
  }

  _buildCategoryList() => CategoryBuilder();
}
