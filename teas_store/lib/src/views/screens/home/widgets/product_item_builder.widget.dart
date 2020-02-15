import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teas_store/src/blocs/product_category/product_category.bloc.dart';
import 'package:teas_store/src/models/products/product_item.model.dart';

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
            physics: BouncingScrollPhysics(),
            mainAxisSpacing: 1.0,
            crossAxisSpacing: 1.0,
            crossAxisCount: 2,
            shrinkWrap: true,
            children: _productList
                .map(
                  (item) => _buildProductList(item),
                )
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

  Widget _buildProductList(ProductItem productItem) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 3 / 2,
            child: Image.asset(
              productItem.itemImgUrl,
              fit: BoxFit.fitWidth,
            ),
          ),
          ListTile(
            dense: true,
            title: Text(
              productItem.itemName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text('\$' + (productItem.itemPrice).toStringAsFixed(2)),
          ),
        ],
      ),
    );
  }
}
