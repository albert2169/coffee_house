import 'package:coffee_house/models/cup_size.dart';
import 'package:coffee_house/models/drink_info.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  final DrinkInfo drinkInfo;
  final Function() onTap;
  const ProductView({super.key, required this.drinkInfo, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Opacity(
        opacity: drinkInfo.isSoldOut ? 0.3 : 1,
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
                    child: Image.asset(drinkInfo.imagePath),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          drinkInfo.name,
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          drinkInfo.about,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(0xFF919191),
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(height: 5),
                        if (drinkInfo.isNewYearMagic)
                          _newContainer(text: 'NEW YEAR MAGIC'),
                        if (drinkInfo.isNew) _newContainer(text: 'NEW'),
                        Spacer(),
                        Text(
                          '${drinkInfo.price['Standard']} ֏',
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
