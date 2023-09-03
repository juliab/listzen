import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:listzen/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:listzen/injection.dart';
import 'package:listzen/presentation/auth/widgets/reset_password_form.dart';
import 'package:listzen/presentation/auth/widgets/top_image.dart';

@RoutePage()
class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: Stack(
          children: [
            const MainImage(),
            KeyboardVisibilityBuilder(
              builder: (context, isKeyboardVisible) => Align(
                alignment: isKeyboardVisible
                    ? Alignment.center
                    : Alignment.bottomCenter,
                child: const ResetPasswordForm(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
