import 'package:coffee_house/models/coffee_house_news.dart';
import 'package:coffee_house/screens/coffee_house_main_screen/widgets/coffee_house_news_bottom_sheet.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  final List<CoffeeHouseNews> allNews;
  const NewsScreen({super.key, required this.allNews});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      appBar: AppBar(
        backgroundColor: const Color(0xFFEEEEEE),
        title: const Text('Նորություններ'),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          itemCount: widget.allNews.length,
          separatorBuilder: (context, index) => const SizedBox(height: 16),
          itemBuilder: (context, index) {
            final news = widget.allNews[index];
            return GestureDetector(
              onTap: () => _showNews(news),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(news.imagePath, fit: BoxFit.cover),
              ),
            );
          },
        ),
      ),
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
