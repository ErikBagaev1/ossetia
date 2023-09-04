import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ossetia/Theme/theme.dart';
import 'package:ossetia/router/router.dart';

@RoutePage()
class BasikDisplayWidget extends StatefulWidget {
  const BasikDisplayWidget({super.key});

  @override
  State<BasikDisplayWidget> createState() => _BasikDisplayWidgetState();
}

class _BasikDisplayWidgetState extends State<BasikDisplayWidget> {
  void onSelectedTab(int index, TabsRouter tabsRouter) {
    // ignore: unrelated_type_equality_checks
    if (onSelectedTab == index) return;
    setState(() {});
    tabsRouter.setActiveIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
        routes: const [
          HomeDisplayRoute(),
          FavoriteDisplayRoute(),
          FavoriteDisplayRoute(),
          FavoriteDisplayRoute()
        ],
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);

          return Scaffold(
            body: child,
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
                currentIndex: tabsRouter.activeIndex,
                unselectedItemColor: grayColor,
                selectedItemColor: blueColor,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.map,
                    ),
                    label: 'Места',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.book,
                    ),
                    label: 'Культура',
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
                onTap: (index) => onSelectedTab(index, tabsRouter),
              ),
            ),
          );
        });
  }
}
