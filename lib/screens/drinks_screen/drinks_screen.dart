import 'package:coffee_house/constants/coffee_house_constants.dart';
import 'package:coffee_house/models/drink_info.dart';
import 'package:coffee_house/screens/drinks_screen/widgets/coffees_tab_bar.dart';
import 'package:coffee_house/screens/drinks_screen/widgets/product_view.dart';
import 'package:coffee_house/screens/drinks_screen/widgets/single_drink_bottom_sheet/single_drink_bottom_sheet.dart';
import 'package:flutter/material.dart';

class DrinksScreen extends StatefulWidget {
  const DrinksScreen({super.key});

  @override
  State<DrinksScreen> createState() => _DrinksScreenState();
}

class _DrinksScreenState extends State<DrinksScreen>
    with TickerProviderStateMixin {
  late TabController _drinksTapBarController;
  late List<DrinkInfo> _drinks;
  late List<String> _drinksTabMapKeys;
  @override
  void initState() {
    super.initState();
    _drinks = [
      ...CoffeeHouseConstants.coffees['hot_coffee'] as List<DrinkInfo>,
    ];
    _drinksTabMapKeys = CoffeeHouseConstants.coffees.keys.toList();
    _drinksTapBarController = TabController(
      animationDuration: const Duration(milliseconds: 200),
      length: CoffeeHouseConstants.drinkTabs.length,
      vsync: this,
    );
    _drinksTapBarController.addListener(() {
      setState(() {
        _drinks =
            CoffeeHouseConstants
                    .coffees[_drinksTabMapKeys[_drinksTapBarController.index]]
                as List<DrinkInfo>;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF1F1F1),
        title: const Text('Սուրճեր'),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CoffeesTabBar(
              controller: _drinksTapBarController,
              tabs: CoffeeHouseConstants.drinkTabs,
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: _drinks.length,
                itemBuilder: (context, index) {
                  return ProductView(
                    drinkInfo: _drinks[index],
                    onTap: () {
                      if (_drinks[index].isSoldOut) {
                        return;
                      }
                      _showSingleDrink(_drinks[index]);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showSingleDrink(DrinkInfo drinkInfo) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      useSafeArea: true,
      builder: (context) => SingleDrinkBottomSheet(drinkInfo: drinkInfo),
    );
  }
}
