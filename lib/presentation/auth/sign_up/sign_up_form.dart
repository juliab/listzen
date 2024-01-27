import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:listzen/presentation/auth/components/accent_button.dart';
import 'package:listzen/presentation/auth/components/auth_form_container.dart';
import 'package:listzen/presentation/auth/components/back_to_route_link.dart';
import 'package:listzen/presentation/auth/components/email_field.dart';
import 'package:listzen/presentation/auth/components/password_field.dart';
import 'package:listzen/presentation/auth/components/redirect_link.dart';
import 'package:listzen/presentation/auth/theming/style.dart';
import 'package:listzen/presentation/routes/app_router.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return AuthFormContainer(
          topPadding: 15.0,
          bottomPadding: 15.0,
          form: Form(
            autovalidateMode: state.autovalidateMode,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BackToRouteLink(
                  text: 'Back to checklists',
                  routeName: ChecklistsOverviewRoute.name,
                  alignment: MainAxisAlignment.start,
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                ),
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
                standardHeightSizedBox,
                RedirectLink(
                  leadingText: "Already have an account?",
                  linkText: 'Login',
                  onTap: () => AutoRouter.of(context).pop(),
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
