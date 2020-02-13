import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teas_store/src/blocs/product_category/product_category.bloc.dart';
import 'package:teas_store/src/models/products/product_category.model.dart';
import 'package:teas_store/src/shared/widgets/background_image.widget.dart';
import 'package:teas_store/src/utils/constants/colors.constant.dart';
import 'package:teas_store/src/utils/constants/text_style.constant.dart';

class FeaturedCategoryBuilder extends StatefulWidget {
  FeaturedCategoryBuilder({@required this.categoryId});

  final String categoryId;

  @override
  _FeaturedCategoryBuilderState createState() =>
      _FeaturedCategoryBuilderState();
}

class _FeaturedCategoryBuilderState extends State<FeaturedCategoryBuilder> {
  final ProductCategoryBloc _bloc = ProductCategoryBloc();

  @override
  void initState() {
    super.initState();
    _bloc.fetchFeatureCateById(widget.categoryId);
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _bloc.fetchFeatureCate,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<ProductCategory> _featureCateList = snapshot.data ?? [];
          return GridView.count(
            physics: BouncingScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 1.0,
            mainAxisSpacing: 1.0,
            children: _featureCateList
                .map(
                  (item) => _buildListItem(item),
                )
                .toList(),
          );
        } else if (snapshot.hasError) {
          return Center(child: Text(snapshot.error.toString()));
        }
        return CircularProgressIndicator();
      },
    );
  }

  Widget _buildListItem(ProductCategory featuredCateItem) {
    return InkWell(
      onTap: () {
        print(featuredCateItem.categoryName);
      },
      child: Container(
        child: BackgroundImage(
          imgUrl: featuredCateItem.categoryImgUrl,
          colorFilter: ColorConstant.DARK_FILTER,
          widget: Center(
            child: Text(
              featuredCateItem.categoryName,
              textAlign: TextAlign.center,
              style: TextStyleConstant.EATER_TITLE_25
                  .copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
