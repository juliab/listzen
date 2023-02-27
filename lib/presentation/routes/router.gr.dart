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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../checklists/checklists_overview/checklists_overview_page.dart' as _i3;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    SignInPageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SignInPage(),
      );
    },
    ChecklistsOverviewPageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ChecklistsOverviewPage(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          SplashPageRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          SignInPageRoute.name,
          path: '/sign-in-page',
        ),
        _i4.RouteConfig(
          ChecklistsOverviewPageRoute.name,
          path: '/checklists-overview-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i4.PageRouteInfo<void> {
  const SplashPageRoute()
      : super(
          SplashPageRoute.name,
          path: '/',
        );

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i4.PageRouteInfo<void> {
  const SignInPageRoute()
      : super(
          SignInPageRoute.name,
          path: '/sign-in-page',
        );

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i3.ChecklistsOverviewPage]
class ChecklistsOverviewPageRoute extends _i4.PageRouteInfo<void> {
  const ChecklistsOverviewPageRoute()
      : super(
          ChecklistsOverviewPageRoute.name,
          path: '/checklists-overview-page',
        );

  static const String name = 'ChecklistsOverviewPageRoute';
}
