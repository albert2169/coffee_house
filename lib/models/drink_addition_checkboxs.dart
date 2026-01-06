import 'package:flutter/material.dart';

class DrinkAdditionCheckboxs extends StatefulWidget {
  final Map<String, int?> additions;
  final String sectionTitle;
  final MapEntry<String, int?>? selectedAddition;
  final Function(MapEntry<String, int?>) onAdditionChange;

  const DrinkAdditionCheckboxs({
    super.key,
    required this.additions,
    required this.sectionTitle,
    required this.selectedAddition,
    required this.onAdditionChange,
  });

  @override
  State<DrinkAdditionCheckboxs> createState() => _DrinkAdditionCheckboxsState();
}

class _DrinkAdditionCheckboxsState extends State<DrinkAdditionCheckboxs> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.sectionTitle,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        ...widget.additions.entries.map((entry) {
          final additionName = entry.key;
          final price = entry.value;
          final bool isSelected = widget.selectedAddition == null
              ? false
              : additionName == widget.selectedAddition!.key;
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: isSelected,
                onChanged: (value) {
              
                  widget.onAdditionChange(entry);
                },
              ),
              const SizedBox(width: 5),
              Text(additionName, style: TextStyle(color: Colors.black)),
              Spacer(),
              if (price != null)
                Text(
                  '+ $price ֏',
                  style: const TextStyle(
                    color: Color(0xFF909090),
                    fontSize: 15,
                  ),
                ),
            ],
          );
        }),
      ],
    );
  }
}
