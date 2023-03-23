import 'package:flutter/material.dart';

class NavigationDestinations {
  final Icon icon;
  final Icon selectedIcon;
  final String label;
  final String route;

  NavigationDestinations(
      {required this.icon,
        required this.selectedIcon,
        required this.label,
        required this.route});
}
