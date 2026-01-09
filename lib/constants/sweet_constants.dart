import 'package:coffee_house/models/drink_info.dart';
import 'package:coffee_house/models/drink_type.dart';

class SweetConstants {
  static const List<DrinkInfo> sweets = [
    DrinkInfo(
      type: DrinkTypeEnum.sweets,
      imagePath: 'assets/images/drinks/sweets/cake1.png',
      name: 'Dubai Cheesecake',
      about: 'Դասական չիզքեյք ՝ Դուբայի շոկոլադի մոտիվներով',
      price: {'Standard': 1500},
      isNew: true,
    ),
    DrinkInfo(
      type: DrinkTypeEnum.sweets,
      imagePath: 'assets/images/drinks/sweets/cake2.png',
      name: 'Pop-oks',
      about:
          'Խրթխրթան խմոր ՝ եփված խտացրած կաթով, պիստակի կրեմով և նուտելլայով, 1 բաժակ 6 հատ',
      price: {'Standard': 1200},
    ),
    DrinkInfo(
      type: DrinkTypeEnum.sweets,
      imagePath: 'assets/images/drinks/sweets/cake3.png',
      name: 'Brownie',
      about: 'Հիմնական բաղադրիչներն են սև և դառը շոկոլադները',
      price: {'Standard': 850},
    ),
    // DrinkInfo(
    //   type: DrinkTypeEnum.sweets,
    //   imagePath: 'assets/images/drinks/sweets/cake4.png',
    //   name: 'Tart chocolate',
    //   about: 'Պնդուկի կրեմ և սև շոկոլադ',
    //   price: {'standard': 650},
    //   isWideProduct: true,
    // ),
    // DrinkInfo(
    //   type: DrinkTypeEnum.sweets,
    //   imagePath: 'assets/images/drinks/sweets/cake5.png',
    //   name: 'Tart caramel',
    //   about: 'Վանիլային կրեմ և կարամել',
    //   price: {'standard': 650},
    //   isWideProduct: true,
    // ),
    // DrinkInfo(
    //   type: DrinkTypeEnum.sweets,
    //   imagePath: 'assets/images/drinks/sweets/cake6.png',
    //   name: 'Macaron Strawberry',
    //   about: 'Նուշի ալյուրով խմոր և ելակի կոնֆի',
    //   price: {'standard': 650},
    //   isWideProduct: true,
    // ),
  ];
}
