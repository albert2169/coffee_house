import 'package:coffee_house/models/drink_info.dart';
import 'package:coffee_house/models/drink_type.dart';

class HotCoffeeConstants {
  static const List<DrinkInfo> hotCoffees = [
    DrinkInfo(
      type: DrinkTypeEnum.hotCoffe,
      imagePath: 'assets/images/drinks/hot_coffees/hot_coffee1.png',
      name: 'Jingle Ginger',
      about:
          'Քաղցր կաթնային սուրճ էսպրեսոյի հիմքով ՝ gingerbread-ի օշարակի հավելումով',
      price: {'Standard': 1200, 'XL': 1400},
      isNewYearMagic: true,
      milkInfo: {'Կաթ': null, 'Նուշի կաթ': 300, 'Սոյայի կաթ': 300},
    ),
    DrinkInfo(
      type: DrinkTypeEnum.hotCoffe,
      imagePath: 'assets/images/drinks/hot_coffees/hot_coffee2.png',
      name: 'Hot Americano',
      about: 'Էսպրեսոյի հիմքով թունդ սուրճ ջրի հավելումով',
      price: {'Standard': 700, 'XL': 900},
      milkInfo: {'Կաթ': 100},
    ),
    DrinkInfo(
      type: DrinkTypeEnum.hotCoffe,
      imagePath: 'assets/images/drinks/hot_coffees/hot_coffee3.png',
      name: 'Pistachio Raf',
      about: 'Էսպրեսոյի հիմքով կաթնային և սերուցքային քաղցր սուրճ',
      price: {'Standard': 1200, 'XL': 1600},
      isNew: true,
      milkInfo: {
        'Կաթ': null,
        'Բանանի կաթ': 200,
        'Նուշի կաթ': 200,
        'Սոյայի կաթ': 200,
        'Կոկոսի կաթ': 200,
      },
    ),
    DrinkInfo(
      type: DrinkTypeEnum.hotCoffe,
      isSoldOut: true,
      imagePath: 'assets/images/drinks/hot_coffees/hot_coffee4.png',
      name: 'Pistachio Raf',
      about:
          'Էսպրեսոյի հիմքով կաթնային և սերուցքային թունդ սուրճ ՝ օշարակի հավելումով',
      price: {'Standard': 1000, 'XL': 1200},
    ),
    DrinkInfo(
      type: DrinkTypeEnum.hotCoffe,
      imagePath: 'assets/images/drinks/hot_coffees/hot_coffee5.png',
      name: 'Hot Cappuccion Natural',
      about:
          'Էսպրեսոյի հիմքով կաթնային և սերուցքային թունդ սուրճ ՝ օշարակի հավելումով',
      price: {'Standard': 900, 'XL': 1200},
      milkInfo: {
        'Կաթ': null,
        'Բանանի կաթ': 300,
        'Նուշի կաթ': 200,
        'Սոյայի կաթ': 400,
        'Կոկոսի կաթ': 500,
      },
      syropeInfo: {
        'Պնդուկի օշարակ': 100,
        'Վանիլային օշարակ': 100,
        'Կարամելի օշարակ': 100,
        'Աղի կարամելի օշարակ': 100,
        'Նուտելլա': 100,
      },
    ),
    DrinkInfo(
      type: DrinkTypeEnum.hotCoffe,
      imagePath: 'assets/images/drinks/hot_coffees/hot_coffee6.png',
      name: 'Hot Raf Strawberry',
      about:
          'Էսպրեսոյի հիմքով, կաթով և սեորուցքով քաղցր սուրճ՝ ելակի օշարակաի հավելումով',
      price: {'Standard': 1000, 'XL': 1400},
      milkInfo: {
        'Կաթ': null,
        'Բանանի կաթ': 200,
        'Նուշի կաթ': 200,
        'Սոյայի կաթ': 200,
        'Կոկոսի կաթ': 200,
      },
    ),
    DrinkInfo(
      type: DrinkTypeEnum.hotCoffe,
      imagePath: 'assets/images/drinks/hot_coffees/hot_coffee7.png',
      name: 'Affogato Coffee',
      about:
          'Էսպրեսոյի հիմքով և պաղպաղակով դեսերտային սուրճ՝ կարամելի և շոկոլադի հավելումով',
      price: {'Standard': 800, 'XL': 1200},
    ),
  ];
}
