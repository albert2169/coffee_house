import 'package:coffee_house/models/coffee_house_news.dart';
import 'package:flutter/material.dart';

class CoffeeHouseNewsBottomSheet extends StatefulWidget {
  final CoffeeHouseNews newsModel;
  const CoffeeHouseNewsBottomSheet({super.key, required this.newsModel});

  @override
  State<CoffeeHouseNewsBottomSheet> createState() =>
      _CoffeeHouseNewsBottomSheetState();
}

class _CoffeeHouseNewsBottomSheetState
    extends State<CoffeeHouseNewsBottomSheet> {
  late Map<String, int> _reactions;
  final Set<String> _selectedReactions = {};

  @override
  void initState() {
    super.initState();
    _reactions = Map<String, int>.from(widget.newsModel.reactions);
  }

  void _toggleReaction(String key) {
    setState(() {
      if (_selectedReactions.contains(key)) {
        _selectedReactions.remove(key);
        _reactions[key] = (_reactions[key] ?? 1) - 1;
      } else {
        _selectedReactions.add(key);
        _reactions[key] = (_reactions[key] ?? 0) + 1;
      }
    });
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
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  controller: scrollController,
                  padding: EdgeInsets.zero,
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          widget.newsModel.imagePath,
                          width: double.infinity,
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 16,
                          left: 16,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.9),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              widget.newsModel.date,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.newsModel.title,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1A1A1A),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            widget.newsModel.slogan,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            widget.newsModel.description,
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              height: 1.5,
                            ),
                          ),
                          const SizedBox(height: 24),
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: _reactions.entries.map((reaction) {
                              final isSelected = _selectedReactions.contains(
                                reaction.key,
                              );
                              return GestureDetector(
                                onTap: () => _toggleReaction(reaction.key),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: isSelected
                                        ? Color(0xFFDE0E23)
                                        : Colors.grey[100],
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: Colors.grey[300]!,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(reaction.key),
                                      const SizedBox(width: 6),
                                      Text(
                                        reaction.value.toString(),
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: isSelected
                                              ? FontWeight.bold
                                              : FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFE53935),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Անցնել Instagram',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
