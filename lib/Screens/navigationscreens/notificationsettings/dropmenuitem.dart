import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuItem {
  final String text;
  final IconData icon;
  const MenuItem({required this.text, required this.icon});
}

class MenuItems {
  static const itemSettings =
      MenuItem(text: 'Push Notifications', icon: Icons.arrow_forward_outlined);
}
