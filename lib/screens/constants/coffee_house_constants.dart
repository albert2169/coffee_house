import 'package:coffee_house/screens/models/coffee_house_nav_bar.dart';
import 'package:flutter/material.dart';

class CoffeeHouseConstants {
  static const List<CoffeeHouseNavBarItem> bottomNavigationBar = [
    CoffeeHouseNavBarItem(name: 'Գլխավոր էջ', iconData: Icons.home_filled),
    CoffeeHouseNavBarItem(name: 'Պատվիրել', iconData: Icons.location_on_outlined),
    CoffeeHouseNavBarItem(name: 'Love Box', iconData: Icons.card_giftcard_outlined),
    CoffeeHouseNavBarItem(name: 'Ավելին', iconData: Icons.apps_rounded),
  ];
}
