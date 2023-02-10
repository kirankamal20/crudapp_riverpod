// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../feature/dashboard/presentation/dashboard_view.dart' as _i1;
import '../feature/home/presentation/home.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    DashBoardRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.DashboardView(),
      );
    },
    HomePageRouter.name: (routeData) {
      final args = routeData.argsAs<HomePageRouterArgs>();
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.HomePage(
          id: args.id,
          key: args.key,
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/DashBoard',
          fullMatch: true,
        ),
        _i3.RouteConfig(
          DashBoardRouter.name,
          path: '/DashBoard',
        ),
        _i3.RouteConfig(
          HomePageRouter.name,
          path: '/homePage',
        ),
      ];
}

/// generated route for
/// [_i1.DashboardView]
class DashBoardRouter extends _i3.PageRouteInfo<void> {
  const DashBoardRouter()
      : super(
          DashBoardRouter.name,
          path: '/DashBoard',
        );

  static const String name = 'DashBoardRouter';
}

/// generated route for
/// [_i2.HomePage]
class HomePageRouter extends _i3.PageRouteInfo<HomePageRouterArgs> {
  HomePageRouter({
    required int id,
    _i4.Key? key,
  }) : super(
          HomePageRouter.name,
          path: '/homePage',
          args: HomePageRouterArgs(
            id: id,
            key: key,
          ),
        );

  static const String name = 'HomePageRouter';
}

class HomePageRouterArgs {
  const HomePageRouterArgs({
    required this.id,
    this.key,
  });

  final int id;

  final _i4.Key? key;

  @override
  String toString() {
    return 'HomePageRouterArgs{id: $id, key: $key}';
  }
}
