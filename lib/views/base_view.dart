import 'package:doonut/themes/components/bottom_nav_items.dart';
import 'package:doonut/views/chatting_view.dart';
import 'package:doonut/views/home_view.dart';
import 'package:doonut/views/my_view.dart';
import 'package:doonut/views/place_view.dart';
import 'package:flutter/material.dart';

class BaseView extends StatefulWidget {
  const BaseView({Key? key}) : super(key: key);

  @override
  State<BaseView> createState() => _SampleScreenState();
}

class _SampleScreenState extends State<BaseView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: [HomeView(), PlaceView(), ChattingView(), MyView()],
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: 1,
              color: Color(0xFFE8EBED),
            ),
            boxShadow: null,
            borderRadius: BorderRadius.circular(20),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black54,
            selectedIconTheme: IconThemeData(color: Color(0xFF222222)),
            unselectedIconTheme: IconThemeData(color: Color(0xFFB6B6B6)),
            selectedLabelStyle: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400), // 선택된 라벨 스타일
            unselectedLabelStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFFB6B6B6)), // 선택되지 않은 라벨 스타일
            showSelectedLabels: true,
            showUnselectedLabels: true,
            enableFeedback: false,
            iconSize: 30.0,
            elevation: 0,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: bottomNavItems
                .map(
                  (e) => BottomNavigationBarItem(
                    icon: Icon(e.iconData),
                    activeIcon: Icon(e.activeIconData),
                    label: e.label,
                  ),
                )
                .toList(),
          ),
        ));
  }
}
