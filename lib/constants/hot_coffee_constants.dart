import 'package:coffee_house/models/coffee_info.dart';
import 'package:coffee_house/models/coffee_type.dart';

class HotCoffeeConstants {
  static const List<CoffeeInfo> hotCoffees = [
    CoffeeInfo(
      type: CoffeeType.hotCoffe,
      imagePath: 'assets/images/coffees/hot_coffees/hot_coffee1.png',
      name: 'Jingle Ginger',
      about:
          'Քաղցր կաթնային սուրճ էսպրեսոյի հիմքով ՝ gingerbread-ի օշարակի հավելումով',
      price: {'standard': 1200, 'XL': 1400},
      isNewYearMagic: true,
      milkInfo: {'Կաթ': null, 'Նուշի կաթ': 300, 'Սոյայի կաթ': 300},
      syropeInfo: {},
      additions: {},
    ),
    CoffeeInfo(
      type: CoffeeType.hotCoffe,
      imagePath: 'assets/images/coffees/hot_coffees/hot_coffee2.png',
      name: 'Hot Americano',
      about: 'Էսպրեսոյի հիմքով թունդ սուրճ ջրի հավելումով',
      price: {'standard': 700, 'XL': 900},
      milkInfo: {'Կաթ': 100},
      syropeInfo: {},
      additions: {},
    ),
    CoffeeInfo(
      type: CoffeeType.hotCoffe,
      imagePath: 'assets/images/coffees/hot_coffees/hot_coffee3.png',
      name: 'Pistachio Raf',
      about: 'Էսպրեսոյի հիմքով կաթնային և սերուցքային քաղցր սուրճ',
      price: {'standard': 1200, 'XL': 1600},
      isNew: true,
      milkInfo: {
        'Կաթ': null,
        'Բանանի կաթ': 200,
        'Նուշի կաթ': 200,
        'Սոյայի կաթ': 200,
        'Կոկոսի կաթ': 200,
      },
      syropeInfo: {},
      additions: {},
    ),
    CoffeeInfo(
      type: CoffeeType.hotCoffe,
      isSoldOut: true,
      imagePath: 'assets/images/coffees/hot_coffees/hot_coffee4.png',
      name: 'Pistachio Raf',
      about:
          'Էսպրեսոյի հիմքով կաթնային և սերուցքային թունդ սուրճ ՝ օշարակի հավելումով',
      price: {'standard': 1000, 'XL': 1200},
      milkInfo: {},
      syropeInfo: {},
      additions: {},
    ),
    CoffeeInfo(
      type: CoffeeType.hotCoffe,
      imagePath: 'assets/images/coffees/hot_coffees/hot_coffee5.png',
      name: 'Pistachio Raf',
      about:
          'Էսպրեսոյի հիմքով կաթնային և սերուցքային թունդ սուրճ ՝ օշարակի հավելումով',
      price: {'standard': 900, 'XL': 1200},
      milkInfo: {
        'Կաթ': null,
        'Բանանի կաթ': 200,
        'Նուշի կաթ': 200,
        'Սոյայի կաթ': 200,
        'Կոկոսի կաթ': 200,
      },
      syropeInfo: {
        'Պնդուկի օշարակ': 100,
        'Վանիլային օշարակ': 100,
        'Կարամելի օշարակ': 100,
        'Աղի կարամելի օշարակ': 100,
        'Նուտելլա': 100,
      },
      additions: {},
    ),
  ];
}
