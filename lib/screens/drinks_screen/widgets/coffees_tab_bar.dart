import 'package:coffee_house/models/icon_text_item.dart';
import 'package:flutter/material.dart';

class CoffeesTabBar extends StatelessWidget {
  final List<IconTextItem> tabs;
  final TabController controller;

  const CoffeesTabBar({
    super.key,
    required this.tabs,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      dividerHeight: 0,
      tabAlignment: TabAlignment.start,
      controller: controller,
      isScrollable: true,
      indicatorColor: Colors.transparent,
      labelPadding: const EdgeInsets.only(right: 5),
      tabs: List.generate(tabs.length, (index) {
        final tabInfo = tabs[index];
        return Tab(
          child: AnimatedBuilder(
            animation: controller,
            builder: (context, _) {
              final bool isSelected = controller.index == index;
              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: isSelected ? Color(0xFFDE0E23) : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  spacing: 10,
                  children: [
                       Icon(
                      tabInfo.iconData,
                      color: isSelected ? Colors.white : Color(0xFF272727),
                    ),
                    Text(
                      tabInfo.name,
                      style: TextStyle(
                        fontSize: 16,
                        color: isSelected
                            ? Colors.white
                            : Color(0xFF272727),
                      ),
                    ),
                 
                  ],
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
