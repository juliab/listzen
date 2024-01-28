import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:listzen/injection.dart';
import 'package:listzen/presentation/auth/components/auth_page_scaffold.dart';
import 'package:listzen/presentation/auth/reset_password/reset_password_form.dart';
import 'package:listzen/presentation/core/widgets/error_flushbar.dart';
import 'package:listzen/presentation/routes/app_router.dart';

@RoutePage()
class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _signInBlocProvider(
      child: _signInBlocListener(
        child: const AuthPageScaffold(
          form: ResetPasswordForm(),
        ),
      ),
    );
  }

  BlocProvider<SignInFormBloc> _signInBlocProvider({
    required Widget child,
  }) {
    return BlocProvider<SignInFormBloc>(
      create: (context) => getIt<SignInFormBloc>(),
      child: child,
    );
  }

  BlocListener<SignInFormBloc, SignInFormState> _signInBlocListener({
    required Widget child,
  }) {
    return BlocListener<SignInFormBloc, SignInFormState>(
      listener: _listenToAuthFailure,
      child: child,
    );
  }

  void _listenToAuthFailure(BuildContext context, SignInFormState state) {
    state.authFailureOrSuccessOption.fold(
      () {},
      (either) => either.fold(
        (failure) {
          final errorMessage = failure.maybeMap(
            userNotFound: (_) => 'User with this email was not found',
            serverError: (_) => 'Server error. Please try again later.',
            orElse: () => 'Authentication error. Please contact support.',
          );
          ErrorFlushbar(
            title: 'Error',
            message: errorMessage,
            context: context,
          ).show();
        },
        (_) => AutoRouter.of(context).push(
          PasswordResetConfirmationRoute(
            emailAddress: state.emailAddress.getOrCrash(),
          ),
        ),
      ),
    );
  }
}
