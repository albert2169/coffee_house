import 'package:flutter/material.dart';

class AdditionTypeRadioButton extends StatefulWidget {
  final Map<String, List<String>> additionType;
  final Function(String) onChange;
  final String currentSelectedType;

  const AdditionTypeRadioButton({
    super.key,
    required this.additionType,
    required this.onChange,
    required this.currentSelectedType,
  });

  @override
  State<AdditionTypeRadioButton> createState() =>
      _AdditionTypeRadioButtonState();
}

class _AdditionTypeRadioButtonState extends State<AdditionTypeRadioButton> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final sectionName = widget.additionType.keys.first;
    final typeNames = widget.additionType.values.first;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          sectionName,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        for (final typeName in typeNames) _buildOption(value: typeName),
      ],
    );
  }

  Widget _buildOption({required String value}) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.onChange(value);
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Row(
          children: [
            Radio<String>(
              value: value,
              groupValue: widget.currentSelectedType,
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
              child: Text(value, style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
