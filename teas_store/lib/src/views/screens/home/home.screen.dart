import 'package:flutter/material.dart';
import 'package:teas_store/src/blocs/product_category/product_category.bloc.dart';
import 'package:teas_store/src/models/products/product_category.model.dart';
import 'package:teas_store/src/shared/widgets/background_image.widget.dart';
import 'package:teas_store/src/utils/constants/colors.constant.dart';
import 'package:teas_store/src/utils/constants/text_style.constant.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    productCategoryBloc.fetchAllCategory();
  }

  @override
  void dispose() {
    super.dispose();
    productCategoryBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: productCategoryBloc.fetchAll,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<ProductCategory> categoryList = snapshot.data ?? [];
            return ListView.builder(
                padding: EdgeInsets.zero,
                physics: BouncingScrollPhysics(),
                itemCount: categoryList.length,
                itemBuilder: (context, index) {
                  var item = categoryList[index];
                  return InkWell(
                    onTap: () {
                      print(item.id);
                    },
                    child: Container(
                      height: 180,
                      margin: EdgeInsets.only(bottom: 1.0),
                      child: BackgroundImage(
                        imgUrl: item.categoryImgUrl,
                        colorFilter: ColorConstant.DARK_FILTER,
                        widget: Center(
                          child: ListTile(
                            title: Text(
                              item.categoryName,
                              textAlign: TextAlign.center,
                              style: TextStyleConstant.EATER_TITLE_25
                                  .copyWith(color: Colors.white),
                            ),
                            subtitle: Text(
                              item.categoryDesc,
                              textAlign: TextAlign.center,
                              style: TextStyleConstant.ILATIC_SUBTITLE_DEFAULT,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                });
          }
          return Container();
        },
      ),
    );
  }
}
