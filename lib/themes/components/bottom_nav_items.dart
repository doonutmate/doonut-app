import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavItem {
  IconData iconData;
  IconData activeIconData;
  String label;

  BottomNavItem({
    required this.iconData,
    required this.activeIconData,
    required this.label,
  });
}

final List<BottomNavItem> bottomNavItems = [
  BottomNavItem(iconData: Icons.home, activeIconData: Icons.home, label: '홈'),
  BottomNavItem(
      iconData: Icons.place, activeIconData: Icons.place, label: '장소'),
  BottomNavItem(
      iconData: Icons.chat_bubble,
      activeIconData: Icons.chat_bubble,
      label: '채팅'),
  BottomNavItem(
      iconData: CupertinoIcons.person_fill,
      activeIconData: CupertinoIcons.person_fill,
      label: '마이'),
];
