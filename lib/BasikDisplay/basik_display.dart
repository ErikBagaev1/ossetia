import 'package:flutter/material.dart';
import 'package:ossetia/FavoriteDisplay/favorite_display.dart';
import 'package:ossetia/HomeDisplay/home_display.dart';
import 'package:ossetia/HomeDisplay/lists.dart';
import 'package:ossetia/HomeDisplay/models.dart';
import 'package:ossetia/ProfileDisplay/profile_display.dart';
import 'package:ossetia/Theme/theme.dart';

class BasikDisplayWidget extends StatefulWidget {
  const BasikDisplayWidget({super.key});

  @override
  State<BasikDisplayWidget> createState() => _BasikDisplayWidgetState();
}

class _BasikDisplayWidgetState extends State<BasikDisplayWidget> {
  int _selectedTab = 0;

  void onSelectedTab(int index) {
    // ignore: unrelated_type_equality_checks
    if (onSelectedTab == index) return;
    setState(() {
      _selectedTab = index;
     
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedTab,
        children: const [
          HomeDisplayWidget(),
          Scaffold(),
          FavoriteDisplayWidget(),
          ProfileWidget(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 65,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: grayColor,
              width: 0.4,
            ),
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 27,
          unselectedFontSize: 14,
          currentIndex: _selectedTab,
          unselectedItemColor: grayColor,
          selectedItemColor: blueColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_rounded,
              ),
              label: 'Дом',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.map,
              ),
              label: 'Места',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
              ),
              label: 'Избранное',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Профиль',
            ),
          ],
          onTap: (onSelectedTab),
        ),
      ),
    );
  }
}
