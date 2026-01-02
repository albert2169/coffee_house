import 'package:coffee_house/models/coffee_type.dart';

class CoffeeInfo {
  final bool isSoldOut;
  final CoffeeType type;
  final String imagePath;
  final String name;
  final String about;
  final bool isNewYearMagic;
  final bool isNew;
  final Map<String, int> price;
  final Map<String, int?> milkInfo;
  final Map<String, int> syropeInfo;
  final Map<String, int> additions;

  const CoffeeInfo({
    required this.type,
    required this.imagePath,
    required this.name,
    required this.about,
    this.isNewYearMagic = false,
    this.isNew = false,
    required this.price,
    required this.milkInfo,
    required this.syropeInfo,
    required this.additions,
    this.isSoldOut = false,
  });
}
