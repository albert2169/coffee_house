import 'package:coffee_house/constants/coffee_house_constants.dart';
import 'package:coffee_house/models/coffee_info.dart';
import 'package:coffee_house/screens/coffees_screen/widgets/coffees_tab_bar.dart';
import 'package:coffee_house/screens/coffees_screen/widgets/product_view.dart';
import 'package:flutter/material.dart';

class CoffeesScreen extends StatefulWidget {
  const CoffeesScreen({super.key});

  @override
  State<CoffeesScreen> createState() => _CoffeesScreenState();
}

class _CoffeesScreenState extends State<CoffeesScreen>
    with TickerProviderStateMixin {
  late TabController _coffeeTapBarController;
  late List<CoffeeInfo> _coffees;
  late List<String> _coffeesTabMapKeys;
  @override
  void initState() {
    super.initState();
    _coffees = [
      ...CoffeeHouseConstants.coffees['hot_coffee'] as List<CoffeeInfo>,
    ];
    _coffeesTabMapKeys = CoffeeHouseConstants.coffees.keys.toList();
    _coffeeTapBarController = TabController(
      animationDuration: const Duration(milliseconds: 200),
      length: CoffeeHouseConstants.coffeeTabs.length,
      vsync: this,
    );
    _coffeeTapBarController.addListener(() {
      setState(() {
        _coffees =
            CoffeeHouseConstants
                    .coffees[_coffeesTabMapKeys[_coffeeTapBarController.index]]
                as List<CoffeeInfo>;
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
              controller: _coffeeTapBarController,
              tabs: CoffeeHouseConstants.coffeeTabs,
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: _coffees.length,
                itemBuilder: (context, index) {
                  return ProductView(coffeeInfo: _coffees[index], onTap: () {});
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
