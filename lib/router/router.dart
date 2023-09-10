import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ossetia/BasikDisplay/basik_display.dart';
import 'package:ossetia/CultureDisplay/about_display.dart';
import 'package:ossetia/CultureDisplay/culture_display.dart';
import 'package:ossetia/CultureDisplay/models.dart';
import 'package:ossetia/FavoriteDisplay/favorite_display.dart';
import 'package:ossetia/HomeDisplay/about_display.dart';
import 'package:ossetia/HomeDisplay/home_display.dart';
import 'package:ossetia/ProfileDisplay/profile_display.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: BasikDisplayRoute.page,
          path: '/',
          maintainState: true,
          children: [
            AutoRoute(
                page: CultureDisplayRoute.page,
                maintainState: true,
                path: 'culture'),
            AutoRoute(
                page: FavoriteDisplayRoute.page,
                maintainState: false,
                path: 'favorite'),
            AutoRoute(
              page: HomeDisplayRoute.page,
              maintainState: false,
              path: 'home',
            ),
            AutoRoute(
              page: ProfileRoute.page,
              maintainState: false,
              path: 'profile',
            ),
          ],
        ),
        AutoRoute(
          page: AboutHomeRoute.page,
          maintainState: true,
        ),
        AutoRoute(
          page: AboutCultureRoute.page,
          maintainState: true,
        ),

        /// routes go here
      ];
}
