import 'package:coffee_house/models/drink_info.dart';
import 'package:coffee_house/models/drink_type.dart';

class SweetConstants {
  static const List<DrinkInfo> sweets = [
    DrinkInfo(
      type: CoffeeType.sweets,
      imagePath: 'assets/images/drinks/sweets/cake1.png',
      name: 'Dubai Cheesecake',
      about: 'Դասական չիզքեյք ՝ Դուբայի շոկոլադի մոտիվներով',
      price: {'standard': 1500},
      isNew: true,
    ),
    DrinkInfo(
      type: CoffeeType.sweets,
      imagePath: 'assets/images/drinks/sweets/cake2.png',
      name: 'Pop-oks',
      about:
          'Խրթխրթան խմոր ՝ եփված խտացրած կաթով, պիստակի կրեմով և նուտելլայով, 1 բաժակ 6 հատ',
      price: {'standard': 1200},
    ),
    DrinkInfo(
      isSoldOut: true,
      type: CoffeeType.sweets,
      imagePath: 'assets/images/drinks/sweets/cake3.png',
      name: 'Brownie',
      about: 'Հիմնական բաղադրիչներն են սև և դառը շոկոլադները',
      price: {'standard': 850},
    ),
    DrinkInfo(
      type: CoffeeType.sweets,
      imagePath: 'assets/images/drinks/sweets/cake4.png',
      name: 'Tart chocolate',
      about: 'Պնդուկի կրեմ և սև շոկոլադ',
      price: {'standard': 650},
    ),
    DrinkInfo(
      type: CoffeeType.sweets,
      imagePath: 'assets/images/drinks/sweets/cake5.png',
      name: 'Tart caramel',
      about: 'Վանիլային կրեմ և կարամել',
      price: {'standard': 650},
    ),
    DrinkInfo(
      type: CoffeeType.sweets,
      imagePath: 'assets/images/drinks/sweets/cake6.png',
      name: 'Macaron Strawberry',
      about: 'Նուշի ալյուրով խմոր և ելակի կոնֆի',
      price: {'standard': 650},
    ),
  ];
}
