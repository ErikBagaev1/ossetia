// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AboutHomeRoute.name: (routeData) {
      final args = routeData.argsAs<AboutHomeRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AboutHomeWidget(
          key: args.key,
          about: args.about,
        ),
      );
    },
    BasikDisplayRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BasikDisplayWidget(),
      );
    },
    CultureDisplayRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CultureDisplayWidget(),
      );
    },
    FavoriteDisplayRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavoriteDisplayWidget(),
      );
    },
    HomeDisplayRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeDisplayWidget(),
      );
    },
  };
}

/// generated route for
/// [AboutHomeRoute]
class AboutHomeRoute extends PageRouteInfo<AboutHomeRouteArgs> {
  AboutHomeRoute({
    Key? key,
    required dynamic about,
    List<PageRouteInfo>? children,
  }) : super(
          AboutHomeRoute.name,
          args: AboutHomeRouteArgs(
            key: key,
            about: about,
          ),
          initialChildren: children,
        );

  static const String name = 'AboutHomeRoute';

  static const PageInfo<AboutHomeRouteArgs> page =
      PageInfo<AboutHomeRouteArgs>(name);
}

class AboutHomeRouteArgs {
  const AboutHomeRouteArgs({
    this.key,
    required this.about,
  });

  final Key? key;

  final dynamic about;

  @override
  String toString() {
    return 'AboutHomeRouteArgs{key: $key, about: $about}';
  }
}

/// generated route for
/// [BasikDisplayRoute]
class BasikDisplayRoute extends PageRouteInfo<void> {
  const BasikDisplayRoute({List<PageRouteInfo>? children})
      : super(
          BasikDisplayRoute.name,
          initialChildren: children,
        );

  static const String name = 'BasikDisplayWidget';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CultureDisplayRoute]
class CultureDisplayRoute extends PageRouteInfo<void> {
  const CultureDisplayRoute({List<PageRouteInfo>? children})
      : super(
          CultureDisplayRoute.name,
          initialChildren: children,
        );

  static const String name = 'CultureDisplayWidget';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavoriteDisplayRoute]
class FavoriteDisplayRoute extends PageRouteInfo<void> {
  const FavoriteDisplayRoute({List<PageRouteInfo>? children})
      : super(
          FavoriteDisplayRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteDisplayWidget';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeDisplayRoute]
class HomeDisplayRoute extends PageRouteInfo<void> {
  const HomeDisplayRoute({List<PageRouteInfo>? children})
      : super(
          HomeDisplayRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeDisplayWidget';

  static const PageInfo<void> page = PageInfo<void>(name);
}
