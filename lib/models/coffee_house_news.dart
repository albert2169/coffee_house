class CoffeeHouseNews {
  final String date;
  final String imagePath;
  final Map<String, dynamic> reactions;
  final String instagramPostPath;
  final String title;
  final String slogan;
  final String description;

  const CoffeeHouseNews({
    required this.imagePath,
    required this.reactions,
    required this.instagramPostPath,
    required this.title,
    required this.slogan,
    required this.description,
    required this.date,
  });
}
