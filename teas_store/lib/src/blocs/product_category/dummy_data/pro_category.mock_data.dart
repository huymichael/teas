import 'dart:collection';

import 'package:teas_store/src/blocs/product_category/dummy_data/featured_category.mock_data.dart';
import 'package:teas_store/src/models/products/product_category.model.dart';
import 'package:teas_store/src/utils/constants/images.constant.dart';
import 'package:teas_store/src/utils/id_generator.util.dart';

class ProductCategoryMockData {
  static final List<ProductCategory> _categories = [
    ProductCategory(
        id: IdGenerator().getID(),
        categoryName: 'Teas',
        categoryDesc:
            'Let yourself fall in love with the aromas and flavours of our best selection.',
        categoryImgUrl: ImageConstant.CATEGORY_TEA,
        featuredCategory: FeaturedCategoryMockData().featuredTeaList),
    ProductCategory(
        id: IdGenerator().getID(),
        categoryName: 'Teapots',
        categoryDesc: 'The iconic tea accessory that you cannot miss out on.',
        categoryImgUrl: ImageConstant.CATEGORY_TEAPOTS,
        featuredCategory: FeaturedCategoryMockData().featuredTeapotList),
    ProductCategory(
        id: IdGenerator().getID(),
        categoryName: 'Teacups - Mugs',
        categoryDesc:
            'Discover our most exclusive designs. With or without filter, you can choose the one you like most!',
        categoryImgUrl: ImageConstant.CATEGORY_TEA_CUPS,
        featuredCategory: FeaturedCategoryMockData().featuredTeacupList),
    ProductCategory(
        id: IdGenerator().getID(),
        categoryName: 'Infusers',
        categoryDesc:
            'Make the most of the aroma and flavour of your loose tea with one of these original infusers',
        categoryImgUrl: ImageConstant.CATEGORY_TEA_INFUSERS),
    ProductCategory(
        id: IdGenerator().getID(),
        categoryName: 'Accessories',
        categoryDesc:
            'Complement your experience with one of these practical accessories',
        categoryImgUrl: ImageConstant.CATEGORY_TEA_ACCESSORIES),
  ];

  UnmodifiableListView<ProductCategory> get productCategory {
    return UnmodifiableListView(_categories);
  }
}
