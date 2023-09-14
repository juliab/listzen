// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ChecklistsOverviewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChecklistsOverviewPage(),
      );
    },
    EditChecklistRoute.name: (routeData) {
      final args = routeData.argsAs<EditChecklistRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditChecklistPage(
          key: args.key,
          editedChecklistOption: args.editedChecklistOption,
        ),
      );
    },
    PasswordResetConfirmationRoute.name: (routeData) {
      final args = routeData.argsAs<PasswordResetConfirmationRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PasswordResetConfirmationPage(
          key: args.key,
          emailAddress: args.emailAddress,
        ),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ResetPasswordPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignInPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignUpPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
  };
}

/// generated route for
/// [ChecklistsOverviewPage]
class ChecklistsOverviewRoute extends PageRouteInfo<void> {
  const ChecklistsOverviewRoute({List<PageRouteInfo>? children})
      : super(
          ChecklistsOverviewRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChecklistsOverviewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EditChecklistPage]
class EditChecklistRoute extends PageRouteInfo<EditChecklistRouteArgs> {
  EditChecklistRoute({
    Key? key,
    required Option<Checklist> editedChecklistOption,
    List<PageRouteInfo>? children,
  }) : super(
          EditChecklistRoute.name,
          args: EditChecklistRouteArgs(
            key: key,
            editedChecklistOption: editedChecklistOption,
          ),
          initialChildren: children,
        );

  static const String name = 'EditChecklistRoute';

  static const PageInfo<EditChecklistRouteArgs> page =
      PageInfo<EditChecklistRouteArgs>(name);
}

class EditChecklistRouteArgs {
  const EditChecklistRouteArgs({
    this.key,
    required this.editedChecklistOption,
  });

  final Key? key;

  final Option<Checklist> editedChecklistOption;

  @override
  String toString() {
    return 'EditChecklistRouteArgs{key: $key, editedChecklistOption: $editedChecklistOption}';
  }
}

/// generated route for
/// [PasswordResetConfirmationPage]
class PasswordResetConfirmationRoute
    extends PageRouteInfo<PasswordResetConfirmationRouteArgs> {
  PasswordResetConfirmationRoute({
    Key? key,
    required String emailAddress,
    List<PageRouteInfo>? children,
  }) : super(
          PasswordResetConfirmationRoute.name,
          args: PasswordResetConfirmationRouteArgs(
            key: key,
            emailAddress: emailAddress,
          ),
          initialChildren: children,
        );

  static const String name = 'PasswordResetConfirmationRoute';

  static const PageInfo<PasswordResetConfirmationRouteArgs> page =
      PageInfo<PasswordResetConfirmationRouteArgs>(name);
}

class PasswordResetConfirmationRouteArgs {
  const PasswordResetConfirmationRouteArgs({
    this.key,
    required this.emailAddress,
  });

  final Key? key;

  final String emailAddress;

  @override
  String toString() {
    return 'PasswordResetConfirmationRouteArgs{key: $key, emailAddress: $emailAddress}';
  }
}

/// generated route for
/// [ResetPasswordPage]
class ResetPasswordRoute extends PageRouteInfo<void> {
  const ResetPasswordRoute({List<PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute({List<PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
