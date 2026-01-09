import 'package:coffee_house/models/drink_info.dart';
import 'package:coffee_house/models/drink_type.dart';

class IcedCoffeeConstants {
  static const List<DrinkInfo> icedCoffees = [
    DrinkInfo(
      type: DrinkTypeEnum.icedCoffee,
      imagePath: 'assets/images/drinks/iced_coffees/iced_coffee1.png',
      name: 'Iced Black Star Coffee',
      about: 'Լուծվող սուրճ՝ միջին քաղցրության, դարչինով',
      price: {'Standard': 500, 'XL': 800},
      isNew: true,
    ),
    DrinkInfo(
      type: DrinkTypeEnum.icedCoffee,
      imagePath: 'assets/images/drinks/iced_coffees/iced_coffee2.png',
      name: 'Iced Kinder Coffee',
      about: 'Լուծվող քաղցր սուրճ՝ կինդերով',
      price: {'Standard': 600, 'XL': 900},
    ),
    DrinkInfo(
      isSoldOut: true,
      type: DrinkTypeEnum.icedCoffee,
      imagePath: 'assets/images/drinks/iced_coffees/iced_coffee3.png',
      name: 'Iced Fantasy Coffee',
      about: 'Լուծվող քաղցր կաթնային սուրճ՝ Կինդերի և կարամելի հավելումով',
      price: {'Standard': 700, 'XL': 1100},
    ),
    DrinkInfo(
      type: DrinkTypeEnum.icedCoffee,
      imagePath: 'assets/images/drinks/iced_coffees/iced_coffee4.png',
      name: 'Coffee Glace',
      about: 'Միջին քաղցրության թունդ սուրճ պաղպաղակով',
      price: {'Standard': 800},
      additionType: {
        'Պաղպաղակի տեսակ': ['Վանիլային', 'Շոկոլադե'],
      },
    ),
    DrinkInfo(
      type: DrinkTypeEnum.icedCoffee,
      imagePath: 'assets/images/drinks/iced_coffees/iced_coffee5.png',
      name: 'Dolce Glace',
      about: 'Ինդոնեզիական սուրճերի միքս ՝ միջին քաղցրության, պաղպաղակով',
      price: {'Standard': 700},
      additionType: {
        'Պաղպաղակի տեսակ': ['Վանիլային', 'Շոկոլադե'],
      },
    ),
    DrinkInfo(
      type: DrinkTypeEnum.icedCoffee,
      imagePath: 'assets/images/drinks/iced_coffees/iced_coffee6.png',
      name: 'Kinder White Cream',
      about: 'Քաղցր լուծվող սուրճ կինդերով և պաղպաղակով',
      price: {'Standard': 1000},
      additions: {'Կիտրոն': 50},
      additionType: {
        'Պաղպաղակի տեսակ': ['Վանիլային', 'Շոկոլադե'],
      },
    ),
    DrinkInfo(
      type: DrinkTypeEnum.icedCoffee,
      imagePath: 'assets/images/drinks/iced_coffees/iced_coffee7.png',
      name: 'White Mocha Glace',
      about: 'Լուծվող կաթնային սուրճ՝ միջին քաղցրության պաղպաղակով',
      price: {'Standard': 800},
      additionType: {
        'Պաղպաղակի տեսակ': ['Վանիլային', 'Շոկոլադե'],
      },
    ),
  ];
}
