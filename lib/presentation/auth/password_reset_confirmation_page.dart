import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:success_check/presentation/auth/widgets/back_to_login_link.dart';
import 'package:success_check/presentation/auth/widgets/top_image.dart';
import 'package:success_check/presentation/core/theming/themes.dart';

@RoutePage()
class PasswordResetConfirmationPage extends StatelessWidget {
  final String emailAddress;

  const PasswordResetConfirmationPage({
    super.key,
    required this.emailAddress,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const TopImage(text: ''),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 60),
                child: Form(
                  child: Column(children: [
                    const MailIcon(),
                    const SizedBox(height: 25),
                    Text(
                      'Check you email',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 25),
                    Text(
                      'We sent a password reset link to',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: greyColor),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      emailAddress,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: greyColor),
                    ),
                    const SizedBox(height: 40),
                    const BackToLoginLink(),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MailIcon extends StatelessWidget {
  const MailIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: const Color(0xFFF9F5FE),
      ),
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: const Color(0xFFF4EBFD),
        ),
        child: const Icon(
          Icons.mail_outline,
          color: Color(0xFF7E5CC4),
          size: 30,
        ),
      ),
    );
  }
}