import 'package:coffee_house/constants/hot_coffee_constants.dart';
import 'package:coffee_house/models/icon_text_item.dart';
import 'package:coffee_house/models/coffee_house_news.dart';
import 'package:coffee_house/models/coffee_info.dart';
import 'package:flutter/material.dart';

class CoffeeHouseConstants {
  static const List<IconTextItem> coffeeTabs = [
    IconTextItem(name: 'Hot Coffee', iconData: Icons.coffee),
    IconTextItem(name: 'Tea', iconData: Icons.emoji_food_beverage),
    IconTextItem(name: 'Iced Coffee', iconData: Icons.local_drink),
    IconTextItem(name: 'Icded Drink', iconData: Icons.blender),
    IconTextItem(name: 'Sweets', iconData: Icons.cake),
  ];
  static const Map<String, List<CoffeeInfo>> coffees = {
    'hot_coffee': HotCoffeeConstants.hotCoffees,
    'matcha_and_tea': [],
    'iced_coffee': [],
    'iced_drinks': [],
    'sweets': [],
  };
  static const List<IconTextItem> bottomNavigationBar = [
    IconTextItem(name: 'Գլխավոր էջ', iconData: Icons.home_filled),
    IconTextItem(name: 'Պատվիրել', iconData: Icons.location_on_outlined),
    IconTextItem(name: 'Love Box', iconData: Icons.card_giftcard_outlined),
    IconTextItem(name: 'Ավելին', iconData: Icons.apps_rounded),
  ];
  static const List<IconTextItem> coffeeHouseOptions = [
    IconTextItem(
      name: 'Մենյու',
      iconData: Icons.menu_book,
      needToNavigate: true,
    ),
    IconTextItem(name: 'Պատմություն', iconData: Icons.history_outlined),
    IconTextItem(name: 'Նախընտրած', iconData: Icons.favorite_outline_sharp),
  ];

  static const List<CoffeeHouseNews> coffeeHouseNews = [
    CoffeeHouseNews(
      date: '09.12.2025',
      imagePath: 'assets/images/news1.png',
      title: 'Սպասում ենք քեզ Seasons Park Station-ում 🤠',
      slogan:
          '📌 Տոնական եռուզեռի ամենասիրելի կանգառներից մեկը նորից քեզ է սպասում',
      description:
          """Այս տարի ևս մենք Seasons Park Station-ում ենք։ Տաք շոկոլա՞դ, սիրելի սուրճ, թե քաղցր թեյ. ընտրիր այն, ինչ սիրտդ կուզի։ Մնացածը մենք կավելացնենք՝ ջերմություն, ժպիտ ու ձմռան կախարդանք ❄️ ☕️ ✨""",
      instagramPostPath: '',
      reactions: {'😂': 6, '🥳': 18, '❤️': 64, '👍': 8},
    ),
    CoffeeHouseNews(
      date: '11.12.2025',

      imagePath: 'assets/images/news2.png',
      title: 'Coffee House x Light Affect ❤️',
      slogan: 'Մեր 4-րդ մասնաճյուղը Գյումրիում՝ նոր, ոճային ֆորմատով',
      description:
          """Սուրճի բույրն ու թրենդային ոճը հիմա մեկ հարկի տակ են՝ շնորհիվ Light Affect-ի հետ համագործակցության:

Այստեղ սուրճը դառնում է փորձառություն, իսկ ոճը՝ տրամադրություն: Կարող ես պատվիրել սիրելի ըմպելիքդ, շրջել խանութ-սրահում և վայելել նոր տեսականին՝ ամենաջերմ ու ոգեշնչող մթնոլորտում:

ք.Գյումրի, Աբովյան 139
10:00 - 22:00""",
      instagramPostPath: '',
      reactions: {'😂': 2, '🥳': 13, '❤️': 34, '👍': 4},
    ),
    CoffeeHouseNews(
      date: '12.12.2025',
      imagePath: 'assets/images/news3.png',
      title: 'Մենք Big Christmas Market-ում ենք 🎅🏼🥨',
      slogan: '🎄 Դեկտեմբերի 17, 18, 19, 20, 21 🎄',
      description:
          """Մոտենում է տարվա ամենախոշոր ամանորյա ցուցահանդես-տոնավաճառը։ Big Christmas Market-ը կրկին մեկ վայրում է համախմբում ամանորյա նվերներն ու տոնական մթնոլորտը։ Դե իսկ մեր տաղավարում կգտնես տաք ըմպելիքներ, համեղ դեսերտներ և ոչ միայն 😉

Սպասում ենք քեզ՝ միասին անցկացնելու ամանորյա հրաշքով լի օրեր ✨

⏰ 12:00-23:00
📍 Մերիդիան ցուցահանդեսային կենտրոն (Ոսկերիչների 1)""",
      instagramPostPath: '',
      reactions: {'😂': 7, '🥳': 22, '❤️': 78, '👍': 12},
    ),
    CoffeeHouseNews(
      date: '23.12.2025',
      imagePath: 'assets/images/news4.png',
      title: 'Holly Jolly և Jingle Ginger ✨',
      slogan: 'երկու սուրճ, մեկ ձմեռային կախարդանք',
      description:
          """Մեր ամանորյա հատուկ ըմպելիքները ստեղծված են այս օրերը ավելի ջերմ ու տոնական դարձնելու համար։ ✨ Jingle Ginger՝ էսպրեսոյի հիմքով սուրճ՝ gingerbread-ի օշարակով ☃️ Holly Jolly՝ սերուցքային սուրճ դարչինի և կարամելի հավելումով

Անպայման փորձեք ու զգացեք ✨ նոր տարվա կախարդանքը յուրաքանչյուր բաժակում 🎄""",
      instagramPostPath: '',
      reactions: {'😂': 13, '🥳': 45, '❤️': 169, '👍': 15},
    ),
  ];
}
