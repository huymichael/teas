import 'package:teas_store/src/models/products/product_category.model.dart';
import 'package:teas_store/src/utils/constants/images.constant.dart';
import 'package:teas_store/src/utils/id_generator.util.dart';

class FeaturedCategoryMockData {
  final List<ProductCategory> featuredTeaList = [
    ProductCategory(
        id: IdGenerator().getID(),
        categoryName: 'Green Tea',
        categoryImgUrl: ImageConstant.CATEGORY_GREEN_TEA,
        categoryDesc:
            'Discover the perfect natural drink to take maximum care of your body.'),
    ProductCategory(
        id: IdGenerator().getID(),
        categoryName: 'Black Tea',
        categoryImgUrl: ImageConstant.CATEGORY_BLACK_TEA,
        categoryDesc:
            'The natural drink characterised by its stimulant properties and an intense flavour with a full body'),
    ProductCategory(
        id: IdGenerator().getID(),
        categoryName: 'White Tea',
        categoryImgUrl: ImageConstant.CATEGORY_WHITE_TEA,
        categoryDesc:
            'The tea of beauty par excellence that you will fall in love with for its delicate flavour and fine aroma'),
    ProductCategory(
        id: IdGenerator().getID(),
        categoryName: 'Oolong Tea',
        categoryImgUrl: ImageConstant.CATEGORY_OOLONG_TEA,
        categoryDesc:
            'Aromatic, sweet and enveloping are the characteristics belonging to the flavour of one of the most exotic teas'),
    ProductCategory(
        id: IdGenerator().getID(),
        categoryName: 'Pu-Erh Tea',
        categoryImgUrl: ImageConstant.CATEGORY_PUERH_TEA,
        categoryDesc:
            'Start enjoying age-old red tea while benefitting from its medicinal properties'),
    ProductCategory(
        id: IdGenerator().getID(),
        categoryName: 'Matcha Tea',
        categoryImgUrl: ImageConstant.CATEGORY_MATCHA_TEA,
        categoryDesc:
            'The most ancient Japanese tea rich in flavour and properties.'),
  ];

  final List<ProductCategory> featuredTeapotList = [
    ProductCategory(
      id: IdGenerator().getID(),
      categoryName: 'Glass Teapots',
      categoryImgUrl: ImageConstant.CATEGORY_TEAPOTS,
      categoryDesc:
          'You will fall in love with the elegant, practical and minimalist design of this glass teapot',
    ),
    ProductCategory(
      id: IdGenerator().getID(),
      categoryName: 'Iron Teapots',
      categoryImgUrl: ImageConstant.CATEGORY_TEAPOTS,
      categoryDesc:
          'Artisanal and crafted using Japanese techniques with which to enjoy the best of rituals',
    ),
    ProductCategory(
      id: IdGenerator().getID(),
      categoryName: 'Porcelain Teapots',
      categoryImgUrl: ImageConstant.CATEGORY_TEAPOTS,
      categoryDesc:
          'Prepare your tea with the iconic material and design of an authentic porcelain teapot',
    ),
    ProductCategory(
      id: IdGenerator().getID(),
      categoryName: 'Yixing Teapots',
      categoryImgUrl: ImageConstant.CATEGORY_TEAPOTS,
      categoryDesc:
          'In the households of Yixing, home of the celebrated purple clay teapots, ordinary potters are crafting something extraordinary.',
    ),
  ];

  final List<ProductCategory> featuredTeacupList = [
    ProductCategory(
      id: IdGenerator().getID(),
      categoryName: 'Glass Mugs',
      categoryImgUrl: ImageConstant.CATEGORY_TEA_CUPS,
      categoryDesc:
          'You will fall in love with the unique, resistant and original characteristics of these glass mugs',
    ),
    ProductCategory(
      id: IdGenerator().getID(),
      categoryName: 'Japanese Mugs',
      categoryImgUrl: ImageConstant.CATEGORY_TEA_CUPS,
      categoryDesc:
          'A unique and artisanal design handmade by master craftsmen where the purest Japanese essence resides',
    ),
    ProductCategory(
      id: IdGenerator().getID(),
      categoryName: 'Porcelain Mugs',
      categoryImgUrl: ImageConstant.CATEGORY_TEA_CUPS,
      categoryDesc:
          'Opt for the most timeless design with porcelain mugs that are ideal for your home',
    ),
    ProductCategory(
      id: IdGenerator().getID(),
      categoryName: 'Gongfu Teacup',
      categoryImgUrl: ImageConstant.CATEGORY_TEA_CUPS,
      categoryDesc:
          'Delicate and diminutive, a zisha gongfu teacup is quintessential for any avid tea drinker.',
    ),
  ];
}
