import 'package:auto_route/auto_route.dart';
import 'package:success_check/presentation/auth/reset_password_page.dart';
import 'package:success_check/presentation/auth/sign_in_page.dart';
import 'package:success_check/presentation/auth/sign_up_page.dart';
import 'package:success_check/presentation/checklists/checklist_form/checklist_form_page_old.dart';
import 'package:success_check/presentation/checklists/checklists_overview/checklists_overview_page_old.dart';
import 'package:success_check/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(page: ChecklistsOverviewPage),
    AutoRoute(page: ChecklistFormPage),
    AutoRoute(page: SignUpPage),
    AutoRoute(page: ResetPasswordPage),
  ],
)
class $AppRouter {}
