import 'package:flutter/material.dart';
import 'package:teas_store/src/bases/bloc/bloc_base.dart';
import 'package:teas_store/src/blocs/product_category/product_category.bloc.dart';
import 'package:teas_store/src/models/products/product_category.model.dart';
import 'package:teas_store/src/routes/route_path.dart';
import 'package:teas_store/src/shared/widgets/background_image.widget.dart';
import 'package:teas_store/src/utils/constants/colors.constant.dart';
import 'package:teas_store/src/utils/constants/text_style.constant.dart';

class CategoryBuilder extends StatefulWidget {
  @override
  _CategoryBuilderState createState() => _CategoryBuilderState();
}

class _CategoryBuilderState extends State<CategoryBuilder> {
  final ProductCategoryBloc _productCategoryBloc = ProductCategoryBloc();

  @override
  void initState() {
    super.initState();
    _productCategoryBloc.fetchAllCategory();
  }

  @override
  void dispose() {
    _productCategoryBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    return StreamBuilder(
      stream: _productCategoryBloc.fetchAll,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<ProductCategory> _categoryList = snapshot.data ?? [];
          return ListView.builder(
              padding: EdgeInsets.zero,
              physics: BouncingScrollPhysics(),
              itemCount: _categoryList.length,
              itemBuilder: (context, index) {
                final categoryItem = _categoryList[index];
                return Container(
                  height: _screenHeight * 0.3,
                  margin: EdgeInsets.only(bottom: 1.0),
                  child: _buildListItem(categoryItem),
                );
              });
        } else if (snapshot.hasError) {
          return Center(child: Text(snapshot.error.toString()));
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  Widget _buildListItem(ProductCategory categoryItem) {
    return InkWell(
      onTap: () {
        if (_isFeaturedCategory(categoryItem)) {
          Navigator.pushNamed(context, RoutePath.featuredCategoryRoute,
              arguments: {
                "id": categoryItem.id,
                "categoryname": categoryItem.categoryName
              });
        } else {
          print(_isFeaturedCategory(categoryItem));
        }
      },
      child: BackgroundImage(
        imgUrl: categoryItem.categoryImgUrl,
        colorFilter: ColorConstant.DARK_FILTER,
        widget: Center(
          child: ListTile(
            title: Text(
              categoryItem.categoryName,
              textAlign: TextAlign.center,
              style: TextStyleConstant.EATER_TITLE_25
                  .copyWith(color: Colors.white),
            ),
            subtitle: Text(
              categoryItem.categoryDesc,
              textAlign: TextAlign.center,
              style: TextStyleConstant.ILATIC_SUBTITLE_DEFAULT,
            ),
          ),
        ),
      ),
    );
  }

  bool _isFeaturedCategory(ProductCategory productCategory) {
    return (productCategory?.featuredCategory?.isNotEmpty) ?? false;
  }
}
