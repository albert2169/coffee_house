import 'package:coffee_house/models/icon_text_item.dart';
import 'package:flutter/material.dart';

class CoffeeHouseOption extends StatelessWidget {
  final Function() onTap;
  final IconTextItem option;
  const CoffeeHouseOption({
    super.key,
    required this.onTap,
    required this.option,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: (MediaQuery.of(context).size.width - 32 - 20) / 3,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 10,
            children: [
              Icon(option.iconData, size: 50, color: Color(0xFFB70005)),
              Text(option.name, style: TextStyle(color: Color(0xFF656565))),
            ],
          ),
        ),
      ),
    );
  }
}
