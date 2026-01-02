import 'package:flutter/material.dart';

class IconTextItem {
  final String name;
  final IconData iconData;
  final bool needToNavigate;
  const IconTextItem({
    required this.name,
    required this.iconData,
    this.needToNavigate = false,
  });
}
