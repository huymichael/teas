import 'package:teas_store/src/models/products/product_item.model.dart';
import 'package:teas_store/src/utils/constants/images.constant.dart';
import 'package:teas_store/src/utils/id_generator.util.dart';

class ProductItemData {
  static final List<ProductItem> greenTeas = [
    ProductItem(
        itemId: IdGenerator().getID(),
        itemName: 'Dragon Phoenix Pearl Jasmine Tea',
        itemDesc:
            'Finest downy green leaves are hand-rolled into small spheres and scented with fragrant jasmine blossoms. It brews up an exquisite cup with an alluring aroma and delicate sweet floral taste.',
        itemImgUrl: ImageConstant.CATEGORY_GREEN_TEA,
        itemPrice: 18.95),
    ProductItem(
        itemId: IdGenerator().getID(),
        itemName: 'Glenburn Darjeeling Green Tea',
        itemDesc:
            'An aromatic and light Darjeeling green tea from the revered Glenburn Estate. It brews to a lovely light golden color and is smooth-drinking with a sweet muscatel taste and a pleasant, lingering floral aroma.',
        itemImgUrl: ImageConstant.CATEGORY_GREEN_TEA,
        itemPrice: 11.19),
    ProductItem(
        itemId: IdGenerator().getID(),
        itemName: 'Jasmine Blossom Green Tea',
        itemDesc:
            'Jasmine is, without a doubt, one of the world\'s great teas. Our Jasmine Blossom blend has downy silver tips and most of the spent jasmine blossoms have been removed. It has an intoxicating aroma and a balanced and delicate flavor. This romantic tea may be enjoyed any time of the day but is especially pleasant in the evening.',
        itemImgUrl: ImageConstant.CATEGORY_GREEN_TEA,
        itemPrice: 7.95),
    ProductItem(
        itemId: IdGenerator().getID(),
        itemName: 'Organic Chamong First Flush Darjeeling Green Tea',
        itemDesc:
            'First flush Darjeeling teas are unique in character and delicate in flavor. Organic Chamong First Flush Darjeeling is simply one of the best. Leaves are hand-picked and grown at elevations ranging from 3700 ft to over 6000 ft. The leaves are a beautiful wiry green with flecks of silvery tips. It has an exquisite bouquet, and the taste is fresh and flavorful with lively muscatel, floral, and citrus notes. One sip and you\'ll fall in love.',
        itemImgUrl: ImageConstant.CATEGORY_GREEN_TEA,
        itemPrice: 28.39),
    ProductItem(
        itemId: IdGenerator().getID(),
        itemName: 'Moroccan Mint Green Tea',
        itemDesc:
            'A delightful and exotic blend of green tea and mints, with a hint of lemon. China Young Hyson green tea, spearmint and peppermint from Oregon, and freshly cut lemongrass are combined for a fragrant, refreshing and aromatic Moroccan Mint green tea. It is a superb drink hot or iced. Try it Moroccan style, sweetened with sugar.',
        itemImgUrl: ImageConstant.CATEGORY_GREEN_TEA,
        itemPrice: 8.95),
  ];
  static final List<ProductItem> blackTeas = [
    ProductItem(
      itemId: IdGenerator().getID(),
      itemName: 'English Breakfast',
      itemDesc:
          'Our English Breakfast Tea combines top-quality black teas from premier tea gardens. The result is a very distinctive, rich tea. It takes milk and sugar very well. This stimulating tea is the perfect morning wake-up drink.',
      itemPrice: 8.95,
      itemImgUrl: ImageConstant.CATEGORY_BLACK_TEA,
    ),
    ProductItem(
      itemId: IdGenerator().getID(),
      itemName: 'Ceylon Breakfast Black Tea',
      itemDesc:
          'Ceylon Breakfast is a smooth, mellow and mild black tea with a medium body, light astringency and lingering finish. It brews a beautiful golden color in the cup and will accept the addition of milk and sugar.',
      itemPrice: 8.95,
      itemImgUrl: ImageConstant.CATEGORY_BLACK_TEA,
    ),
    ProductItem(
      itemId: IdGenerator().getID(),
      itemName: 'Lapsang Souchong Black Tea',
      itemDesc:
          'From the Fujian province of China comes this very distinctive tea with its exotic smoky flavor. After plucking, the leaves are withered over cypress or pine wood fires. After the rolling process, they are placed into wooden barrels until they begin to emit their own pleasant aroma. As a final step they are placed in bamboo baskets and hung on racks over smoky pine fires where they dry and absorb the essence of the smoke.',
      itemPrice: 7.95,
      itemImgUrl: ImageConstant.CATEGORY_BLACK_TEA,
    ),
    ProductItem(
      itemId: IdGenerator().getID(),
      itemName: 'Double Bergamot Earl Grey Decaf Black Tea',
      itemDesc:
          'A naturally decaffeinated version of our popular Double Bergamot Earl Grey. Twice the aromatic bergamot oil is added to this tea for more of that distinctive Earl Grey flavor.',
      itemPrice: 10.95,
      itemImgUrl: ImageConstant.CATEGORY_BLACK_TEA,
    ),
    ProductItem(
      itemId: IdGenerator().getID(),
      itemName: 'Sweet Cinnamon Black Tea',
      itemDesc:
          'To create our Sweet Cinnamon tea, we\'ve combined the finest cinnamon with a smooth blend of black teas. The result is a spicy delight with an irresistible aroma. Cinnamon tea is what many would consider to be "comfort tea". Our Sweet Cinnamon makes a great after-dinner beverage and goes well with fruit and pastries. Brew a big pot and the wonderful aroma will make your home seem warmer on even the chilliest night.',
      itemPrice: 8.75,
      itemImgUrl: ImageConstant.CATEGORY_BLACK_TEA,
    ),
  ];
  static final List<ProductItem> whiteTeas = [
    ProductItem(
      itemId: IdGenerator().getID(),
      itemName: 'WHITE TEA WHITE DAIQUIRI',
      itemDesc:
          'Refreshing blend made with different white teas and fruits like apple, pineapple and coconut, make this tea an exotic and stimulating combination for this Summer. With apple taste and a slight sour touch, it will seduce your palate with its sweet coconut background. A blend inspired by the classic Cuban cocktail with a healthy base of white teas with antioxidant and diuretic effects. ',
      itemPrice: 15.50,
      itemImgUrl: ImageConstant.CATEGORY_WHITE_TEA,
    ),
    ProductItem(
      itemId: IdGenerator().getID(),
      itemName: 'WHITE TEA FRESH MELON',
      itemDesc:
          'All joins together for this Summer so you can enjoy an antioxidant, cleansing and refreshing drink. Enjoy its intense melon flavor with a subtle touch of pineapple. INGREDIENTS: Blend of white teas, candied pineapple, apple, green tea, candied melon, natural watermelon flavouring, calendula petals.',
      itemPrice: 15.50,
      itemImgUrl: ImageConstant.CATEGORY_WHITE_TEA,
    ),
    ProductItem(
      itemId: IdGenerator().getID(),
      itemName: 'WHITE TEA WHITE KISS',
      itemDesc:
          'High quality White Tea, Pai Mu Tan, flavoured with caramelised strawberries. A wonderful golden infusion, sweet and fruity bouquet and silky body. White Tea enthusiasts looking for a flavoured version will love it. Also ideal for fans of flavoured Green Teas. INGREDIENTS: White tea (Pai Mu Tan), strawberry, forest strawberry leaves and strawberry flavouring',
      itemPrice: 15.50,
      itemImgUrl: ImageConstant.CATEGORY_WHITE_TEA,
    ),
    ProductItem(
      itemId: IdGenerator().getID(),
      itemName: 'WHITE TEA SAKURA BEAUTY BLEND',
      itemDesc:
          'White and Green Tea with Morello cherry, Matcha Tea and rose buds. Funcionality: Beautifying. More ingredients: Antioxidant, diuretic, depurative. Ingredients: White tea, green tea, Morello cherry, matcha, rose buds, almond, kiwi pieces, apple, cornflower petals',
      itemPrice: 12.95,
      itemImgUrl: ImageConstant.CATEGORY_WHITE_TEA,
    ),
    ProductItem(
      itemId: IdGenerator().getID(),
      itemName: 'WHITE TEA SILVER NEEDLES (BAI HAO YIN ZHEN)',
      itemDesc:
          'White Tea made exclusively from tender, unopened tea leaf buds covered with white velvet fuzz. Its manufacturing process is carried out completely by hand. In only a few years, this tea has become one of the most appreciated and sought after teas by connoisseurs due to its floral aroma and silky, velvety texture. Moreover, it is full of antioxidants but has low theine content. yields three infusions: 3 minutes for the first one, 4 minutes for the second one and 5 minutes for the third one. INGREDIENTS: White tea made exclusively from young, unopened buds, covered in a delicate white bloom.',
      itemPrice: 24.98,
      itemImgUrl: ImageConstant.CATEGORY_WHITE_TEA,
    ),
  ];
  static final List<ProductItem> oOLongTeas = [
    ProductItem(
      itemId: IdGenerator().getID(),
      itemName: '',
      itemDesc: '',
      itemPrice: 0.0,
      itemImgUrl: ImageConstant.CATEGORY_BLACK_TEA,
    ),
    ProductItem(
      itemId: IdGenerator().getID(),
      itemName: '',
      itemDesc: '',
      itemPrice: 0.0,
      itemImgUrl: ImageConstant.CATEGORY_BLACK_TEA,
    ),
    ProductItem(
      itemId: IdGenerator().getID(),
      itemName: '',
      itemDesc: '',
      itemPrice: 0.0,
      itemImgUrl: ImageConstant.CATEGORY_BLACK_TEA,
    ),
    ProductItem(
      itemId: IdGenerator().getID(),
      itemName: '',
      itemDesc: '',
      itemPrice: 0.0,
      itemImgUrl: ImageConstant.CATEGORY_BLACK_TEA,
    ),
    ProductItem(
      itemId: IdGenerator().getID(),
      itemName: '',
      itemDesc: '',
      itemPrice: 0.0,
      itemImgUrl: ImageConstant.CATEGORY_BLACK_TEA,
    ),
  ];
  static final List<ProductItem> puErhTeas = [
    ProductItem(
      itemId: IdGenerator().getID(),
      itemName: '',
      itemDesc: '',
      itemPrice: 0.0,
      itemImgUrl: ImageConstant.CATEGORY_BLACK_TEA,
    ),
    ProductItem(
      itemId: IdGenerator().getID(),
      itemName: '',
      itemDesc: '',
      itemPrice: 0.0,
      itemImgUrl: ImageConstant.CATEGORY_BLACK_TEA,
    ),
    ProductItem(
      itemId: IdGenerator().getID(),
      itemName: '',
      itemDesc: '',
      itemPrice: 0.0,
      itemImgUrl: ImageConstant.CATEGORY_BLACK_TEA,
    ),
    ProductItem(
      itemId: IdGenerator().getID(),
      itemName: '',
      itemDesc: '',
      itemPrice: 0.0,
      itemImgUrl: ImageConstant.CATEGORY_BLACK_TEA,
    ),
    ProductItem(
      itemId: IdGenerator().getID(),
      itemName: '',
      itemDesc: '',
      itemPrice: 0.0,
      itemImgUrl: ImageConstant.CATEGORY_BLACK_TEA,
    ),
  ];

  static final List<ProductItem> glassTeapots = [
    ProductItem(
        itemId: IdGenerator().getID(),
        itemName: '',
        itemDesc: '',
        itemImgUrl: '',
        itemPrice: 0.0)
  ];
  static final List<ProductItem> ironTeapots = [
    ProductItem(
        itemId: IdGenerator().getID(),
        itemName: '',
        itemDesc: '',
        itemImgUrl: '',
        itemPrice: 0.0)
  ];
  static final List<ProductItem> porcelainTeapots = [
    ProductItem(
        itemId: IdGenerator().getID(),
        itemName: '',
        itemDesc: '',
        itemImgUrl: '',
        itemPrice: 0.0)
  ];
  static final List<ProductItem> yixingTeapots = [
    ProductItem(
        itemId: IdGenerator().getID(),
        itemName: '',
        itemDesc: '',
        itemImgUrl: '',
        itemPrice: 0.0)
  ];
  static final List<ProductItem> glassMugs = [
    ProductItem(
        itemId: IdGenerator().getID(),
        itemName: '',
        itemDesc: '',
        itemImgUrl: '',
        itemPrice: 0.0)
  ];
  static final List<ProductItem> japanMugs = [
    ProductItem(
        itemId: IdGenerator().getID(),
        itemName: '',
        itemDesc: '',
        itemImgUrl: '',
        itemPrice: 0.0)
  ];
  static final List<ProductItem> porcelainMugs = [
    ProductItem(
        itemId: IdGenerator().getID(),
        itemName: '',
        itemDesc: '',
        itemImgUrl: '',
        itemPrice: 0.0)
  ];
  static final List<ProductItem> gongfuMugs = [
    ProductItem(
        itemId: IdGenerator().getID(),
        itemName: '',
        itemDesc: '',
        itemImgUrl: '',
        itemPrice: 0.0)
  ];
  static final List<ProductItem> infusers = [
    ProductItem(
        itemId: IdGenerator().getID(),
        itemName: 'TEA SHOP GREEN CHAIN INFUSER',
        itemDesc:
            'A fun and original gadget to infuse our tea, herbal tea or rooibos. Fill the infuser up to half of its capacity. Content: 2 gr.',
        itemImgUrl: ImageConstant.CATEGORY_TEA_INFUSERS,
        itemPrice: 3.60),
    ProductItem(
        itemId: IdGenerator().getID(),
        itemName: 'NETZ 6 CM INFUSER',
        itemDesc:
            'Infuser with a large capacity and a good closing system. Perfect for concentrates and cold tea.',
        itemImgUrl: ImageConstant.CATEGORY_TEA_INFUSERS,
        itemPrice: 7.80),
    ProductItem(
        itemId: IdGenerator().getID(),
        itemName: 'TEA SHOP KONIC 6 CM FILTER',
        itemDesc:
            'Stainless steel filter with an ultra-fine mesh and exclusive Tea Shop design.',
        itemImgUrl: ImageConstant.CATEGORY_TEA_INFUSERS,
        itemPrice: 9.30),
    ProductItem(
        itemId: IdGenerator().getID(),
        itemName: 'PERSONAL PAPER FILTER (64 BAGS)',
        itemDesc:
            'Ecological and compostable filter. Facilitates preparation in tight spaces.',
        itemImgUrl: ImageConstant.CATEGORY_TEA_INFUSERS,
        itemPrice: 6.80),
  ];
  static final List<ProductItem> accessories = [
    ProductItem(
        itemId: IdGenerator().getID(),
        itemName: 'Chinese Red Wood Tong',
        itemDesc:
            'This tool is used for holding the cups and taking the leaves away from teapot.',
        itemImgUrl: ImageConstant.CATEGORY_TEA_ACCESSORIES,
        itemPrice: 3.95),
    ProductItem(
        itemId: IdGenerator().getID(),
        itemName: 'Chinese Red Wood Scoop',
        itemDesc:
            'This tool is used for measuring the amount of tea leaves into the teapot.',
        itemImgUrl: ImageConstant.CATEGORY_TEA_ACCESSORIES,
        itemPrice: 4.75),
    ProductItem(
        itemId: IdGenerator().getID(),
        itemName: 'Hard Wood Handle Puerh Knife Needle',
        itemDesc:
            'This knife is specially design for prying the leaves apart from compressed Pu-Erh tea. For using it safely, take the knife with your hands towards the front. Then insert it into the tea cake, tou, or brick about 1 to 2 inches. Shake the knife to make the leaves into small pieces.',
        itemImgUrl: ImageConstant.CATEGORY_TEA_ACCESSORIES,
        itemPrice: 4.95),
    ProductItem(
        itemId: IdGenerator().getID(),
        itemName: 'Modern Bamboo Pu_Erh Breaking Tea Tray',
        itemDesc: '',
        itemImgUrl: ImageConstant.CATEGORY_TEA_ACCESSORIES,
        itemPrice: 18.95),
    ProductItem(
        itemId: IdGenerator().getID(),
        itemName: 'Wood Tray',
        itemDesc:
            'Simple attractive design. It is very inconvenience to break Pu_Erh tea to small pieces on this tray.',
        itemImgUrl: ImageConstant.CATEGORY_TEA_ACCESSORIES,
        itemPrice: 0.0),
    ProductItem(
        itemId: IdGenerator().getID(),
        itemName: 'Yixing Clay Bagua Incense Burner',
        itemDesc:
            'Yixing Clay Bagua Incense Burner for traditional tea ceremony or relaxation.',
        itemImgUrl: ImageConstant.CATEGORY_TEA_ACCESSORIES,
        itemPrice: 19.99),
  ];
//  static final List<ProductItem> porcelainMugs = [
//    ProductItem(
//        itemId: IdGenerator().getID(),
//        itemName: '',
//        itemDesc: '',
//        itemImgUrl: '',
//        itemPrice: 0.0)
//  ];

}
