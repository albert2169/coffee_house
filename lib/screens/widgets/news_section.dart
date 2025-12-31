import 'package:coffee_house/screens/constants/coffee_house_constants.dart';
import 'package:flutter/material.dart';

class NewsSection extends StatelessWidget {
  const NewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Նորություններ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'դիտել բոլորը',
                style: TextStyle(
                  color: Color(0xFFB70005),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 200,
          width: double.infinity,
          child: ListView(
            padding: EdgeInsets.only(right: 10),
            scrollDirection: Axis.horizontal,
            children: CoffeeHouseConstants.coffeeHouseNews
                .map<Widget>(
                  (newsModel) => Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.asset(newsModel.imagePath, fit: BoxFit.fitHeight),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
