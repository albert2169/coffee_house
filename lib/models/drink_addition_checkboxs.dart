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
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        ...widget.additions.entries.map((entry) {
          final additionName = entry.key;
          final price = entry.value;

          final bool isSelected = widget.selectedAddition?.key == additionName;

          return InkWell(
            onTap: () => widget.onAdditionChange(entry),
            borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Row(
                children: [
                  _CustomCheckbox(isChecked: isSelected),
                  const SizedBox(width: 10),
                  Text(
                    additionName,
                    style: const TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  const Spacer(),
                  if (price != null)
                    Text(
                      '+ $price ֏',
                      style: const TextStyle(
                        color: Color(0xFF909090),
                        fontSize: 15,
                      ),
                    ),
                ],
              ),
            ),
          );
        }),
      ],
    );
  }
}

class _CustomCheckbox extends StatelessWidget {
  final bool isChecked;

  const _CustomCheckbox({required this.isChecked});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: 22,
      height: 22,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: isChecked ? Colors.transparent : Colors.grey,
          width: 2,
        ),
        color: isChecked ? Colors.red : Colors.transparent,
      ),
      child: isChecked
          ? const Icon(Icons.check, size: 20, color: Colors.white)
          : null,
    );
  }
}
