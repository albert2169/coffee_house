import 'package:coffee_house/constants/coffee_house_constants.dart';
import 'package:coffee_house/models/coffee_house_news.dart';
import 'package:coffee_house/screens/coffee_house_main_screen/widgets/coffee_house_news_bottom_sheet.dart';
import 'package:coffee_house/screens/news_screen.dart';
import 'package:flutter/material.dart';

class NewsSection extends StatefulWidget {
  const NewsSection({super.key});

  @override
  State<NewsSection> createState() => _NewsSectionState();
}

class _NewsSectionState extends State<NewsSection> {
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
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      NewsScreen(allNews: CoffeeHouseConstants.coffeeHouseNews),
                ),
              ),
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
                    child: GestureDetector(
                      onTap: () => _showNews(newsModel),
                      child: Image.asset(
                        newsModel.imagePath,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }

  void _showNews(CoffeeHouseNews news) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      useSafeArea: true,
      builder: (context) => CoffeeHouseNewsBottomSheet(newsModel: news),
    );
  }
}
