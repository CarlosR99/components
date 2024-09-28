import 'package:flutter/material.dart' show IconData, Widget;

class MenuOptions {
  final String route;
  final IconData icon;
  final String title;
  final Widget page;

  MenuOptions({
    required this.route,
    required this.icon,
    required this.title,
    required this.page,
  });
}
