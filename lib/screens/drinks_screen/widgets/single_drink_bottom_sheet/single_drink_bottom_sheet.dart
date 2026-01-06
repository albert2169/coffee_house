import 'package:coffee_house/models/cup_size.dart';
import 'package:coffee_house/models/drink_addition_checkboxs.dart';
import 'package:coffee_house/models/drink_info.dart';
import 'package:coffee_house/screens/drinks_screen/widgets/single_drink_bottom_sheet/widgets/addition_type_radio_button.dart';
import 'package:coffee_house/screens/drinks_screen/widgets/single_drink_bottom_sheet/widgets/cup_size_checkbox.dart';
import 'package:flutter/material.dart';

class SingleDrinkBottomSheet extends StatefulWidget {
  final DrinkInfo drinkInfo;
  const SingleDrinkBottomSheet({super.key, required this.drinkInfo});

  @override
  State<SingleDrinkBottomSheet> createState() => _SingleDrinkBottomSheetState();
}

class _SingleDrinkBottomSheetState extends State<SingleDrinkBottomSheet> {
  late int _price;
  late int _priceDifferenceBetweenCupSize;
  late String _currentSelectedAdditionType;
  MapEntry<String, int?>? _selectedAdditionMilk;
  MapEntry<String, int?>? _selectedAddition;
  MapEntry<String, int?>? _selectedAdditionSyropeInfo;
  CupSize _currentCupSize = CupSize.standard;
  @override
  void initState() {
    super.initState();
    _price = widget.drinkInfo.price[CupSize.standard] as int;
    _priceDifferenceBetweenCupSize =
        widget.drinkInfo.price.containsKey(CupSize.xl)
        ? (widget.drinkInfo.price[CupSize.xl] as int) - _price
        : 0;
    _currentSelectedAdditionType = widget.drinkInfo.additionType.isNotEmpty
        ? widget.drinkInfo.additionType.values.first.first
        : '';
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 1,
      minChildSize: 0.5,
      maxChildSize: 1.0,
      expand: false,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      widget.drinkInfo.imagePath,
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 2,
                      fit: BoxFit.scaleDown,
                    ),
                    Text(
                      widget.drinkInfo.name,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      '$_price ֏',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      widget.drinkInfo.about,
                      style: TextStyle(color: Color(0xFF9D9D9D), fontSize: 13),
                    ),
                    const SizedBox(height: 30),
                    if (widget.drinkInfo.price.containsKey(CupSize.xl))
                      CupSizeSelector(
                        currentCupSize: _currentCupSize,
                        prices: widget.drinkInfo.price,
                        onChange: (cupSize) {
                          setState(() {
                            _currentCupSize = cupSize;
                            _price += cupSize == CupSize.standard
                                ? -_priceDifferenceBetweenCupSize
                                : _priceDifferenceBetweenCupSize;
                          });
                        },
                      ),
                    if (widget.drinkInfo.additionType.isNotEmpty)
                      AdditionTypeRadioButton(
                        currentSelectedType: _currentSelectedAdditionType,
                        additionType: widget.drinkInfo.additionType,
                        onChange: (selectedType) {
                          setState(() {
                            _currentSelectedAdditionType = selectedType;
                          });
                        },
                      ),
                    if (widget.drinkInfo.milkInfo.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: DrinkAdditionCheckboxs(
                          additions: widget.drinkInfo.milkInfo,
                          sectionTitle: 'Կաթ',
                          selectedAddition: _selectedAdditionMilk,
                          onAdditionChange: onAdditionChangeMilk,
                        ),
                      ),

                    //if(widget.drinkInfo.type == DrinkTypeEnum.icedCoffee)
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void onAdditionChangeMilk(MapEntry<String, int?> selectedMilkAdditionEntry) {
    setState(() {
      if (selectedMilkAdditionEntry.key == _selectedAdditionMilk?.key) {
        _selectedAdditionMilk = null;
        _price -= selectedMilkAdditionEntry.value ?? 0;
      } else if (_selectedAdditionMilk == null) {
        _selectedAdditionMilk = selectedMilkAdditionEntry;
        _price += selectedMilkAdditionEntry.value ?? 0;
      } else {
        _price -= _selectedAdditionMilk?.value ?? 0;
        _price += selectedMilkAdditionEntry.value ?? 0;
        _selectedAdditionMilk = selectedMilkAdditionEntry;
      }
    });
  }
}
