import 'package:coffee_house/models/drink_addition_checkboxs.dart';
import 'package:coffee_house/models/drink_info.dart';
import 'package:coffee_house/models/drink_type.dart';
import 'package:coffee_house/models/sweetness_enum.dart';
import 'package:coffee_house/screens/drinks_screen/widgets/single_drink_bottom_sheet/widgets/addition_type_radio_button.dart';
import 'package:coffee_house/screens/drinks_screen/widgets/single_drink_bottom_sheet/widgets/radio_buttons.dart';
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
  String _currentCupSize = 'Standard';
  String _currentSweetness = SweetnessEnum.noSugar.displayName;
  bool _isWithLessIceCube = false;
  Map<String, int?> _sweetnessMap = {};
  MapEntry<String, int?>? _selectedIceMap;
  @override
  void initState() {
    super.initState();
    _price = widget.drinkInfo.price['Standard'] as int;
    _priceDifferenceBetweenCupSize = widget.drinkInfo.price.containsKey('XL')
        ? (widget.drinkInfo.price['XL'] as int) - _price
        : 0;
    _currentSelectedAdditionType = widget.drinkInfo.additionType.isNotEmpty
        ? widget.drinkInfo.additionType.values.first.first
        : '';
    _sweetnessMap = {
      for (final sweetness in SweetnessEnum.values) sweetness.displayName: null,
    };
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
                    if (widget.drinkInfo.price.containsKey('XL'))
                      RadioButtons(
                        currentRadioButton: _currentCupSize,
                        radioButtons: widget.drinkInfo.price,
                        onChange: (cupSize) {
                          setState(() {
                            _currentCupSize = cupSize;
                            _price += cupSize == 'Standard'
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
                        padding: const EdgeInsets.only(top: 15),
                        child: DrinkAdditionCheckboxs(
                          additions: widget.drinkInfo.milkInfo,
                          sectionTitle: 'Կաթ',
                          selectedAddition: _selectedAdditionMilk,
                          onAdditionChange: _onAdditionChangeMilk,
                        ),
                      ),
                    if (widget.drinkInfo.type == DrinkTypeEnum.icedCoffee)
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: DrinkAdditionCheckboxs(
                          selectedAddition: _selectedIceMap,
                          sectionTitle: 'Սառույց',
                          additions: {'Քիչ սառույց': null},
                          onAdditionChange: (ice) {
                            setState(() {
                              if (_isWithLessIceCube) {
                                _selectedIceMap = null;
                              } else {
                                _selectedIceMap = ice;
                              }
                              _isWithLessIceCube = !_isWithLessIceCube;
                            });
                          },
                        ),
                      ),
                    if (widget.drinkInfo.type != DrinkTypeEnum.sweets)
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: RadioButtons(
                          sectionTitle: 'Շաքար',
                          currentRadioButton: _currentSweetness,
                          radioButtons: _sweetnessMap,
                          onChange: (newSweetness) {
                            setState(() {
                              _currentSweetness = newSweetness;
                            });
                          },
                        ),
                      ),
                    if (widget.drinkInfo.syropeInfo.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: DrinkAdditionCheckboxs(
                          additions: widget.drinkInfo.syropeInfo,
                          sectionTitle: 'Օշարակ',
                          selectedAddition: _selectedAdditionSyropeInfo,
                          onAdditionChange: _onSyropeInfoChange,
                        ),
                      ),
                    if (widget.drinkInfo.additions.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: DrinkAdditionCheckboxs(
                          additions: widget.drinkInfo.additions,
                          sectionTitle: 'Հավելումներ',
                          selectedAddition: _selectedAddition,
                          onAdditionChange: _onAdditionChange,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void _onAdditionChangeMilk(MapEntry<String, int?> selectedMilkAdditionEntry) {
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

  void _onSyropeInfoChange(MapEntry<String, int?> selectedAdditionSyropeInfo) {
    setState(() {
      if (selectedAdditionSyropeInfo.key == _selectedAdditionSyropeInfo?.key) {
        _selectedAdditionSyropeInfo = null;
        _price -= selectedAdditionSyropeInfo.value ?? 0;
      } else if (_selectedAdditionSyropeInfo == null) {
        _selectedAdditionSyropeInfo = selectedAdditionSyropeInfo;
        _price += selectedAdditionSyropeInfo.value ?? 0;
      } else {
        _price -= _selectedAdditionSyropeInfo?.value ?? 0;
        _price += selectedAdditionSyropeInfo.value ?? 0;
        _selectedAdditionSyropeInfo = selectedAdditionSyropeInfo;
      }
    });
  }

  void _onAdditionChange(MapEntry<String, int?> selectedAddition) {
    setState(() {
      if (selectedAddition.key == _selectedAddition?.key) {
        _selectedAddition = null;
        _price -= selectedAddition.value ?? 0;
      } else if (_selectedAddition == null) {
        _selectedAddition = selectedAddition;
        _price += selectedAddition.value ?? 0;
      } else {
        _price -= _selectedAddition?.value ?? 0;
        _price += selectedAddition.value ?? 0;
        _selectedAddition = selectedAddition;
      }
    });
  }
}
