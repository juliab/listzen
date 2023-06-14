import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:success_check/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:success_check/injection.dart';
import 'package:success_check/presentation/auth/widgets/sign_up_form.dart';
import 'package:success_check/presentation/auth/widgets/top_image.dart';

@RoutePage()
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: const Column(
              children: [
                TopImage(text: 'SIGN UP'),
                SignUpForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
