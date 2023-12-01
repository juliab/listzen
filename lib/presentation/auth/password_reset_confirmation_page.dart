import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:listzen/presentation/auth/theming/style.dart';
import 'package:listzen/presentation/auth/widgets/back_to_route_link.dart';
import 'package:listzen/presentation/auth/widgets/top_image.dart';
import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/routes/app_router.dart';

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
      body: Stack(
        children: [
          const MainImage(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 400,
              decoration: formDecoration,
              padding: const EdgeInsets.only(
                  left: 20, right: 20, bottom: 60, top: 40),
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
                const BackToRouteLink(
                  text: 'Back to login',
                  routeName: SignInRoute.name,
                ),
              ]),
            ),
            //   ),
          ),
        ],
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
      decoration: outerCircleDecoration,
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: innerCircleDecoration,
        child: const Icon(
          Icons.mail_outline,
          color: mailIconColor,
          size: mailIconSize,
        ),
      ),
    );
  }
}
