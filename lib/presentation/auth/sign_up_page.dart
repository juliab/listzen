import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:listzen/injection.dart';
import 'package:listzen/presentation/auth/theming/style.dart';
import 'package:listzen/presentation/auth/widgets/accent_button.dart';
import 'package:listzen/presentation/auth/widgets/auth_form_container.dart';
import 'package:listzen/presentation/auth/widgets/auth_page_scaffold.dart';
import 'package:listzen/presentation/auth/widgets/back_to_route_link.dart';
import 'package:listzen/presentation/auth/widgets/email_field.dart';
import 'package:listzen/presentation/auth/widgets/password_field.dart';
import 'package:listzen/presentation/auth/widgets/redirect_link.dart';
import 'package:listzen/presentation/core/error_flushbar.dart';
import 'package:listzen/presentation/routes/app_router.dart';

@RoutePage()
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignInFormBloc>(
      create: (context) => getIt<SignInFormBloc>(),
      child: const AuthPageScaffold(form: SignUpForm()),
    );
  }
}

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: _listenToAuthFailure,
      builder: (context, state) {
        return AuthFormContainer(
          form: Form(
            autovalidateMode: state.autovalidateMode,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BackToRouteLink(
                  text: 'Back to checklists',
                  routeName: ChecklistsOverviewRoute.name,
                  alignment: MainAxisAlignment.start,
                ),
                const SizedBox(height: 30.0),
                const EmailField(
                  showValidCheckbox: true,
                ),
                standardHeightSizedBox,
                const PasswordField(
                  showConfirmPasswordField: true,
                  showValidCheckbox: true,
                ),
                standardHeightSizedBox,
                AccentButton(
                  text: 'Create account',
                  onPressed: () => context.read<SignInFormBloc>().add(
                      const SignInFormEvent
                          .registerWithEmailAndPasswordPressed()),
                ),
                const SizedBox(height: 30),
                RedirectLink(
                  leadingText: "Already have an account?",
                  linkText: 'Login',
                  onTap: () => AutoRouter.of(context).pop(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _listenToAuthFailure(BuildContext context, SignInFormState state) {
    state.authFailureOrSuccessOption.fold(
      () {},
      (either) => either.fold((failure) {
        final errorMessage = failure.maybeMap(
          cancelledByUser: (_) => 'Sign in cancelled',
          serverError: (_) => 'Server error. Please try again later.',
          emailAlreadyInUse: (_) => 'Email already in use',
          orElse: () => 'Authentication error. Please contact support.',
        );
        ErrorFlushbar(
          title: 'Error',
          message: errorMessage,
          context: context,
        ).show();
      }, (_) {
        AutoRouter.of(context).push(const ChecklistsOverviewRoute());
      }),
    );
  }
}
