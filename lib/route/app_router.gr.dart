// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    NewHomepageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const NewHomepage(),
      );
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          NewHomepageRoute.name,
          path: '/',
        )
      ];
}

/// generated route for
/// [NewHomepage]
class NewHomepageRoute extends PageRouteInfo<void> {
  const NewHomepageRoute()
      : super(
          NewHomepageRoute.name,
          path: '/',
        );

  static const String name = 'NewHomepageRoute';
}
