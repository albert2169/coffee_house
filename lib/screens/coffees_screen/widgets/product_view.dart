import 'package:coffee_house/models/coffee_info.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  final CoffeeInfo coffeeInfo;
  final Function() onTap;
  const ProductView({super.key, required this.coffeeInfo, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Opacity(
        opacity: coffeeInfo.isSoldOut ? 0.3 : 1,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            height: 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: Image.asset(coffeeInfo.imagePath),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          coffeeInfo.name,
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          coffeeInfo.about,
                          style: TextStyle(
                            color: Color(0xFF919191),
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(height: 5),
                        if (coffeeInfo.isNewYearMagic)
                          _newContainer(text: 'NEW YEAR MAGIC'),
                        if (coffeeInfo.isNew) _newContainer(text: 'NEW'),
                        Spacer(),
                        Text(
                          '${coffeeInfo.price['standard']} ֏',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _newContainer({required String text}) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFE80015),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 12)),
      ),
    );
  }
}
