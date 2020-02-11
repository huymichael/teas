import 'package:flutter/material.dart';
import 'package:teas_store/src/blocs/product_category/product_category.bloc.dart';
import 'package:teas_store/src/models/products/product_item.model.dart';
import 'package:teas_store/src/shared/widgets/background_image.widget.dart';
import 'package:teas_store/src/utils/constants/colors.constant.dart';
import 'package:teas_store/src/utils/constants/text_style.constant.dart';

class ProductBuilder extends StatefulWidget {
  ProductBuilder({@required this.categoryId});

  final String categoryId;

  @override
  _ProductBuilderState createState() => _ProductBuilderState();
}

class _ProductBuilderState extends State<ProductBuilder> {
  final ProductCategoryBloc _bloc = ProductCategoryBloc();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bloc.fetchProductById(widget.categoryId);
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _bloc.fetchProductItemById,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<ProductItem> _productList = snapshot.data ?? [];
          return GridView.count(
            mainAxisSpacing: 1.0,
            crossAxisSpacing: 1.0,
            crossAxisCount: 2,
            children: _productList
                .map((item) => BackgroundImage(
                      imgUrl: item.itemImgUrl,
                      colorFilter: ColorConstant.DARK_FILTER,
                      widget: Center(
                        child: Text(
                          item.itemName,
                          style: TextStyleConstant.EATER_TITLE_25
                              .copyWith(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ))
                .toList(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text(snapshot.error.toString()),
          );
        }
        return CircularProgressIndicator();
      },
    );
  }
}
