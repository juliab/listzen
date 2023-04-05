import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:success_check/application/auth/auth_bloc.dart';
import 'package:success_check/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:success_check/presentation/auth/widgets/accent_button.dart';
import 'package:success_check/presentation/auth/widgets/email_field.dart';
import 'package:success_check/presentation/auth/widgets/error_flushbar.dart';
import 'package:success_check/presentation/auth/widgets/sign_in_with_google_button.dart';
import 'package:success_check/presentation/core/theming/themes.dart';

import 'package:success_check/presentation/routes/router.gr.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold((failure) {
            final errorMessage = failure.map(
              cancelledByUser: (_) => 'Cancelled',
              serverError: (_) => 'Server error',
              emailAlreadyInUse: (_) => 'Email already in use',
              invalidEmailAndPasswordCombination: (_) =>
                  'Invalid email and password combination',
            );
            flushbar(errorMessage).show(context);
          }, (_) {
            AutoRouter.of(context).push(const ChecklistsOverviewPageRoute());
            BlocProvider.of<AuthBloc>(context)
                .add(const AuthEvent.authCheckRequested());
          }),
        );
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 60),
          child: Form(
            autovalidateMode: state.autovalidateMode,
            child: Column(
              children: [
                const EmailField(),
                const SizedBox(height: 25),
                const AccentButton(
                  text: 'Reset Password',
                  event: SignInFormEvent.signInWithEmailAndPasswordPressed(),
                ),
                const SizedBox(height: 25),
                GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).pop();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.arrow_back),
                      const SizedBox(width: 8),
                      Text(
                        'Back to login',
                        style: TextStyle(
                          color: greyColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: dividerThickness,
      color: borderColor,
    );
  }
}
