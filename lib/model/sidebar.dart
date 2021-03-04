import 'package:flutter/material.dart';

class SidebarItem {
  SidebarItem({this.title, this.background, this.icon});

  final String title;
  final LinearGradient background;
  final Icon icon;
}

var sidebarItem = [
  SidebarItem(
    title: 'Home',
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        const Color(0xFF00AEFF),
        const Color(0xFF0076FF),
      ],
    ),
    icon: const Icon(Icons.home, color: Colors.white),
  ),
  SidebarItem(
    title: 'Courses',
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        const Color(0xFFFA7D75),
        const Color(0xFFC23D61),
      ],
    ),
    icon: const Icon(Icons.library_books, color: Colors.white),
  ),
  SidebarItem(
    title: 'Billing',
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        const Color(0xFFFAD64A),
        const Color(0xFFEA880F),
      ],
    ),
    icon: const Icon(Icons.credit_card, color: Colors.white),
  ),
  SidebarItem(
    title: 'Setting',
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        const Color(0xFF4E62CC),
        const Color(0xFF202A78),
      ],
    ),
    icon: const Icon(Icons.settings, color: Colors.white),
  ),
];
