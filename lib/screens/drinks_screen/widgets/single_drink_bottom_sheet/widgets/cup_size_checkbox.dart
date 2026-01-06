import 'package:coffee_house/models/cup_size.dart';
import 'package:flutter/material.dart';

class CupSizeSelector extends StatefulWidget {
  final Map<CupSize, int> prices;
  final Function(CupSize) onChange;
  final CupSize currentCupSize;
  const CupSizeSelector({
    super.key,
    required this.prices,
    required this.onChange,
    required this.currentCupSize,
  });

  @override
  State<CupSizeSelector> createState() => _CupSizeSelectorState();
}

class _CupSizeSelectorState extends State<CupSizeSelector> {
  CupSize selectedSize = CupSize.standard;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildOption(
          title: 'Standard',
          price: widget.prices[CupSize.standard]!,
          value: CupSize.standard,
        ),
        _buildOption(
          title: 'XL',
          price: widget.prices[CupSize.xl]!,
          value: CupSize.xl,
        ),
      ],
    );
  }

  Widget _buildOption({
    required String title,
    required int price,
    required CupSize value,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Radio<CupSize>(
            value: value,
            groupValue: widget.currentCupSize,
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
          Text(
            '$price ֏',
            style: const TextStyle(color: Color(0xFF909090), fontSize: 15),
          ),
        ],
      ),
    );
  }
}
