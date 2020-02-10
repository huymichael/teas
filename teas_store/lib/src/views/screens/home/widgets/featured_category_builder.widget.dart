import 'package:flutter/material.dart';
import 'package:teas_store/src/blocs/product_category/product_category.bloc.dart';
import 'package:teas_store/src/models/products/product_category.model.dart';
import 'package:teas_store/src/shared/widgets/background_image.widget.dart';

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
          final List<ProductCategory> _featureCateList = snapshot.data ?? [];
          return ListView.builder(
              itemCount: _featureCateList.length,
              itemBuilder: (context, index) {
                final _featuredItem = _featureCateList[index];
                return Container(
                  height: 100,
                  child: BackgroundImage(
                    imgUrl: _featureCateList[index].categoryImgUrl,
                  ),
                );
              });
        } else if (snapshot.hasError) {
          return Center(child: Text(snapshot.error.toString()));
        }
        return CircularProgressIndicator();
      },
    );
  }
}
