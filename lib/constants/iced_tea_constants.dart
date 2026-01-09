import 'package:coffee_house/models/drink_info.dart';
import 'package:coffee_house/models/drink_type.dart';

class IcedTeaConstants {
  static const List<DrinkInfo> icedTeas = [
    DrinkInfo(
      type: DrinkTypeEnum.icedTeas,
      imagePath: 'assets/images/drinks/iced_teas/iced_tea1.png',
      name: 'Iced Tea Cosmo',
      about: 'Սառը հատապտղային թեյ կարկադեի հիմքով',
      price: {'Standard': 450, 'XL': 700},
      isNewYearMagic: true,
    ),
    DrinkInfo(
      type: DrinkTypeEnum.icedTeas,
      imagePath: 'assets/images/drinks/iced_teas/iced_tea2.png',
      name: 'Bumble Matcha',
      about: 'Մատչայի հիմքով սառը ըմպելիք է՝ նարնջի հյութի և նարնջի հավելումով',
      price: {'Standard': 900, 'XL': 1200},
    ),
    DrinkInfo(
      isSoldOut: true,
      type: DrinkTypeEnum.icedTeas,
      imagePath: 'assets/images/drinks/iced_teas/iced_tea3.png',
      name: 'Iced Sky Matcha',
      about:
          'Կապույտ մատչելի հիմքով կաթնային ու սերուցքային քաղցր սառը ըմպելիք՝ cream cheese-ի ու brown suagr-ի օշարակով',
      price: {'Standard': 1200, 'XL': 1600},
    ),
    DrinkInfo(
      type: DrinkTypeEnum.icedTeas,
      imagePath: 'assets/images/drinks/iced_teas/iced_tea4.png',
      name: 'Iced Matcha Raf Rasperry',
      about:
          'Մատչայի հիմքով սերուցքային և կաթնային ըմպելիք՝ ազնվամորու օշարակի հավելումով',
      price: {'Standard': 1000, 'XL': 1400},
    ),
    DrinkInfo(
      type: DrinkTypeEnum.icedTeas,
      imagePath: 'assets/images/drinks/iced_teas/iced_tea5.png',
      name: 'Iced Matcha Latte',
      about: 'Ճապոնական կանաչ թեյի հիմքով թույլ կաթնային ըմպելիք',
      price: {'Standard': 900, 'XL': 1200},
      milkInfo: {
        'Կաթ': null,
        'Բանանի կաթ': 200,
        'Նուշի կաթ': 200,
        'Սոյայի կաթ': 200,
        'Կոկոսի կաթ': 200,
      },
    ),
  ];
}
