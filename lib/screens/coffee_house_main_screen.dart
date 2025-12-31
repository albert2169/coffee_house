import 'package:coffee_house/screens/constants/coffee_house_constants.dart';
import 'package:coffee_house/screens/widgets/club_card.dart';
import 'package:coffee_house/screens/widgets/coffee_house_app_bar.dart';
import 'package:coffee_house/screens/widgets/coffee_house_nav_bar.dart';
import 'package:coffee_house/screens/widgets/coffee_house_options.dart';
import 'package:coffee_house/screens/widgets/news_section.dart';
import 'package:coffee_house/screens/widgets/scan_action_button.dart';
import 'package:flutter/material.dart';

class CoffeeHouseMainScreen extends StatefulWidget {
  const CoffeeHouseMainScreen({super.key});

  @override
  State<CoffeeHouseMainScreen> createState() => _CoffeeHouseMainScreenState();
}

class _CoffeeHouseMainScreenState extends State<CoffeeHouseMainScreen>
    with TickerProviderStateMixin {
  int _currentNavBarIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CoffeeHouseAppBar(),
      backgroundColor: Color(0xFFEEEEEE),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClubCard(),
              Row(
                spacing: 10,
                children: [
                  ...CoffeeHouseConstants.coffeeHouseOptions.map<Widget>(
                    (option) => CoffeeHouseOption(option: option, onTap: () {}),
                  ),
                ],
              ),
              NewsSection()
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ScanActionButton(),
      bottomNavigationBar: CoffeeHouseNavBar(
        currentIndex: _currentNavBarIndex,
        onTap: (index) {
          setState(() {
            _currentNavBarIndex = index;
          });
        },
      ),
    );
  }
}
