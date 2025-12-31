import 'package:coffee_house/screens/scanner_screen.dart';
import 'package:coffee_house/screens/widgets/coffee_house_app_bar.dart';
import 'package:coffee_house/screens/widgets/coffee_house_nav_bar.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: 65,
        width: 65,
        child: FloatingActionButton(
          backgroundColor: const Color(0xFFDE111F),
          elevation: 4,
          shape: const CircleBorder(),
          onPressed: () async {
            final result = await Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ScannerScreen()),
            );

            if (result != null) {
              print('Scanned: $result');
            }
          },
          child: Icon(Icons.qr_code_scanner, color: Colors.white, size: 35),
        ),
      ),

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
