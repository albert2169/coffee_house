import 'package:coffee_house/models/cup_size.dart';
import 'package:flutter/material.dart';

class RadioButtons extends StatefulWidget {
  final String? sectionTitle;
  final Map<String, int?> radioButtons;
  final Function(String) onChange;
  final String currentRadioButton;
  const RadioButtons({
    super.key,
    required this.radioButtons,
    required this.onChange,
    required this.currentRadioButton,
    this.sectionTitle,
  });

  @override
  State<RadioButtons> createState() => _RadioButtonsState();
}

class _RadioButtonsState extends State<RadioButtons> {
  CupSize selectedSize = CupSize.standard;

  @override
  Widget build(BuildContext context) {
    final radioButtonsKeys = widget.radioButtons.keys.toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.sectionTitle != null)
          Column(
            children: [
              Text(
                widget.sectionTitle!,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        for (final radioButtonKey in radioButtonsKeys)
          _buildOption(
            title: radioButtonKey,
            price: widget.radioButtons[radioButtonKey],
          ),
      ],
    );
  }

  Widget _buildOption({required String title, required int? price}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Radio<String>(
            value: title,
            groupValue: widget.currentRadioButton,
            activeColor: Colors.red,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: const VisualDensity(
              horizontal: VisualDensity.minimumDensity,
              vertical: VisualDensity.minimumDensity,
            ),
            onChanged: (v) {
              setState(() {
                widget.onChange(v!);
              });
            },
          ),
          const SizedBox(width: 4),
          Expanded(
            child: Text(title, style: TextStyle(color: Colors.black)),
          ),
          if (price != null)
            Text(
              '$price ֏',
              style: const TextStyle(color: Color(0xFF909090), fontSize: 15),
            ),
        ],
      ),
    );
  }
}
