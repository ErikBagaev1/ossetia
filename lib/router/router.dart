import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ossetia/BasikDisplay/basik_display.dart';
import 'package:ossetia/FavoriteDisplay/favorite_display.dart';
import 'package:ossetia/HomeDisplay/about_display.dart';
import 'package:ossetia/HomeDisplay/home_display.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: BasikDisplayRoute.page,
          path: '/',
          maintainState: false,
          children: [
            AutoRoute(
                page: FavoriteDisplayRoute.page,
                maintainState: false,
                path: 'favorite'),
            AutoRoute(
              page: HomeDisplayRoute.page,
              maintainState: false,
              path: 'home',
            ),
          ],
        ),
        AutoRoute(
          page: AboutHomeRoute.page,
          maintainState: false,
        ),

        /// routes go here
      ];
}
