
import 'package:coffee_house/models/drink_type.dart';

class DrinkInfo {
  final bool isSoldOut;
  final DrinkTypeEnum type;
  final String imagePath;
  final String name;
  final String about;
  final bool isNewYearMagic;
  final bool isNew;
  final Map<String, int> price;
  final Map<String, int?> milkInfo;
  final Map<String, int?> syropeInfo;
  final Map<String, int?> additions;
  final Map<String,List<String>> additionType;
  final bool isWideProduct;

  const DrinkInfo({
    required this.price,
    required this.type,
    required this.imagePath,
    required this.name,
    required this.about,
    this.isNewYearMagic = false,
    this.isNew = false,
    this.isSoldOut = false,
    this.additionType = const {},
    this.syropeInfo = const {},
    this.milkInfo = const {},
    this.additions = const {},
    this.isWideProduct = false,
  });
}
