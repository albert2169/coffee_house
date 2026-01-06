import 'package:coffee_house/models/cup_size.dart';
import 'package:coffee_house/models/drink_info.dart';
import 'package:coffee_house/models/drink_type.dart';

class TeaConstants {
  static const List<DrinkInfo> teas = [
    DrinkInfo(
      type: DrinkTypeEnum.matchaAndTea,
      imagePath: 'assets/images/drinks/tea/tea1.png',
      name: 'Blueberry Tea',
      about: 'Հապալասի օշարակով բնական տաք թեյ է՝ լիմոնի հավելումով',
      price: {CupSize.standard: 750},
      additions: {'Կիտրոն': 50},
      isNew: true,
    ),
    DrinkInfo(
      type: DrinkTypeEnum.matchaAndTea,
      imagePath: 'assets/images/drinks/tea/tea2.png',
      name: 'Tea Cranberry',
      about: 'Լոռամրգի օշարակով թեյ՝ լոռամրգով, լիմոնով և նանայով',
      price: {CupSize.standard: 750},
      additions: {'Կիտրոն': 50},
    ),
    DrinkInfo(
      type: DrinkTypeEnum.matchaAndTea,
      imagePath: 'assets/images/drinks/tea/tea3.png',
      name: 'Pomegranate Tea',
      about: 'Նռան օշարակով բնական տաք թեյ է (միջին քաղցրության)',
      price: {CupSize.standard: 750},
      additions: {'Կիտրոն': 50},
    ),
    DrinkInfo(
      type: DrinkTypeEnum.matchaAndTea,
      imagePath: 'assets/images/drinks/tea/tea4.png',
      name: 'Immuno Tea',
      about:
          'Մեղրով բնական տաք թեյ է՝ լիմոնի, իմբիրի և դարչնի հավելումով(միջին քաղցրության)',
      price: {CupSize.standard: 750},
      additions: {'Կիտրոն': 50},
    ),
    DrinkInfo(
      type: DrinkTypeEnum.matchaAndTea,
      imagePath: 'assets/images/drinks/tea/tea5.png',
      name: 'Citrus Tea',
      about:
          'Ցիտրուսային օշարակով բնական տաք թեյ է ՝ լիմոնի և նարնջի հավելումով (միջին քաղցրության)',
      price: {CupSize.standard: 750},
      additions: {'Կիտրոն': 50},
    ),
    DrinkInfo(
      isSoldOut: true,
      type: DrinkTypeEnum.matchaAndTea,
      imagePath: 'assets/images/drinks/tea/tea6.png',
      name: 'Green Tea',
      about: 'Թրմվող տաք թեյ ՝ կանաչ հիմքով',
      price: {CupSize.standard: 450},
      additions: {'Կիտրոն': 50},
      additionType: {
        'Տեսակներ': ['Կանաչ Թեյ', 'Ուրց, Դաղձ և Երիցուկ', 'Դեղձ, Ելակ և Մանգո'],
      },
    ),
    DrinkInfo(
      isSoldOut: true,
      type: DrinkTypeEnum.matchaAndTea,
      imagePath: 'assets/images/drinks/tea/tea7.png',
      name: 'Herbal Tea',
      about: 'Թրմվող տաք թեյ ՝ չորամրգերի հիմքով',
      price: {CupSize.standard: 450},
      additionType: {
        'Բուսական թեյ': ['Սև թեյ', 'Նարինջ, Դարչին, Լիմոն և Մեխակ'],
      },
    ),
    DrinkInfo(
      type: DrinkTypeEnum.matchaAndTea,
      imagePath: 'assets/images/drinks/tea/tea8.png',
      name: 'Black Tea',
      about: 'Թրմվող տաք թեյ ՝ սև հիմքով',
      price: {CupSize.standard: 450},
      additionType: {
        'Տեսակներ': ['Սև թեյ', 'Նարինջ, Դարչին, Լիմոն և Մեխակ'],
      },
      additions: {'Կիտրոն': 50},
    ),
  ];
}
