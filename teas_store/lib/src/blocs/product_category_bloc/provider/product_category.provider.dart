import 'package:teas_store/src/models/products/product_category.model.dart';
import 'package:teas_store/src/utils/constants/images.constant.dart';
import 'package:teas_store/src/utils/id_generator.util.dart';

class ProductCategoryProvider {
  List<ProductCategory> _categories = [
    ProductCategory(
      id: IdGenerator().getID(),
      categoryName: 'Teas',
      categoryDesc:
          'Let yourself fall in love with the aromas and flavours of our best selection.',
      categoryImgUrl: ImageConstant.CATEGORY_TEA,
      featuredCategory: [
        ProductCategory(
            id: IdGenerator().getID(),
            categoryName: 'Green Tea',
            categoryDesc:
                'Discover the perfect natural drink to take maximum care of your body.',
            categoryImgUrl: ImageConstant.CATEGORY_GREEN_TEA),
        ProductCategory(
            id: IdGenerator().getID(),
            categoryName: 'Black Tea',
            categoryDesc:
                'The natural drink characterised by its stimulant properties and an intense flavour with a full body',
            categoryImgUrl: ImageConstant.CATEGORY_BLACK_TEA),
        ProductCategory(
            id: IdGenerator().getID(),
            categoryName: 'White Tea',
            categoryDesc:
                'The tea of beauty par excellence that you will fall in love with for its delicate flavour and fine aroma',
            categoryImgUrl: ImageConstant.CATEGORY_WHITE_TEA),
        ProductCategory(
            id: IdGenerator().getID(),
            categoryName: 'Oolong Tea',
            categoryDesc:
                'Aromatic, sweet and enveloping are the characteristics belonging to the flavour of one of the most exotic teas',
            categoryImgUrl: ImageConstant.CATEGORY_OOLONG_TEA),
        ProductCategory(
            id: IdGenerator().getID(),
            categoryName: 'Pu-Erh Tea',
            categoryDesc:
                'Start enjoying age-old red tea while benefitting from its medicinal properties',
            categoryImgUrl: ImageConstant.CATEGORY_PUERH_TEA),
        ProductCategory(
            id: IdGenerator().getID(),
            categoryName: 'Matcha Tea',
            categoryDesc:
                'The most ancient Japanese tea rich in flavour and properties.',
            categoryImgUrl: ImageConstant.CATEGORY_MATCHA_TEA),
      ],
    ),
    ProductCategory(
        id: IdGenerator().getID(),
        categoryName: 'Teapots',
        categoryDesc: 'The iconic tea accessory that you cannot miss out on.',
        categoryImgUrl: ImageConstant.CATEGORY_TEAPOTS,
        featuredCategory: [
          ProductCategory(
              id: IdGenerator().getID(),
              categoryName: 'Glass Teapots',
              categoryDesc:
                  'You will fall in love with the elegant, practical and minimalist design of this glass teapot',
              categoryImgUrl: ImageConstant.CATEGORY_TEAPOTS),
          ProductCategory(
              id: IdGenerator().getID(),
              categoryName: 'Iron Teapots',
              categoryDesc:
                  'Artisanal and crafted using Japanese techniques with which to enjoy the best of rituals',
              categoryImgUrl: ImageConstant.CATEGORY_TEAPOTS),
          ProductCategory(
              id: IdGenerator().getID(),
              categoryName: 'Porcelain Teapots',
              categoryDesc:
                  'Prepare your tea with the iconic material and design of an authentic porcelain teapot',
              categoryImgUrl: ImageConstant.CATEGORY_TEAPOTS),
          ProductCategory(
              id: IdGenerator().getID(),
              categoryName: 'Yixing Teapots',
              categoryDesc:
                  'In the households of Yixing, home of the celebrated purple clay teapots, ordinary potters are crafting something extraordinary.',
              categoryImgUrl: ImageConstant.CATEGORY_TEAPOTS),
        ]),
    ProductCategory(
        id: IdGenerator().getID(),
        categoryName: 'Teacups - Mugs',
        categoryDesc:
            'Discover our most exclusive designs. With or without filter, you can choose the one you like most!',
        categoryImgUrl: ImageConstant.CATEGORY_TEA_CUPS,
        featuredCategory: [
          ProductCategory(
            id: IdGenerator().getID(),
            categoryName: 'Glass Mugs',
            categoryDesc:
                'You will fall in love with the unique, resistant and original characteristics of these glass mugs',
            categoryImgUrl: ImageConstant.CATEGORY_TEA_CUPS,
          ),
          ProductCategory(
            id: IdGenerator().getID(),
            categoryName: 'Japanese Mugs',
            categoryDesc:
                'A unique and artisanal design handmade by master craftsmen where the purest Japanese essence resides',
            categoryImgUrl: ImageConstant.CATEGORY_TEA_CUPS,
          ),
          ProductCategory(
            id: IdGenerator().getID(),
            categoryName: 'Porcelain Mugs',
            categoryDesc:
                'Opt for the most timeless design with porcelain mugs that are ideal for your home',
            categoryImgUrl: ImageConstant.CATEGORY_TEA_CUPS,
          ),
          ProductCategory(
            id: IdGenerator().getID(),
            categoryName: 'Gongfu Teacup',
            categoryDesc:
                'Delicate and diminutive, a zisha gongfu teacup is quintessential for any avid tea drinker.',
            categoryImgUrl: ImageConstant.CATEGORY_TEA_CUPS,
          ),
        ]),
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

  Future<List<ProductCategory>> fetchAllCategory() async {
    return _categories;
  }
}
