import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:listzen/presentation/auth/components/auth_form_container.dart';
import 'package:listzen/presentation/auth/components/auth_page_scaffold.dart';
import 'package:listzen/presentation/auth/components/back_to_route_link.dart';
import 'package:listzen/presentation/auth/theming/style.dart';
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
    return AuthPageScaffold(
      form: AuthFormContainer(
        form: PasswordResetConfirmationForm(emailAddress: emailAddress),
      ),
    );
  }
}

class PasswordResetConfirmationForm extends StatelessWidget {
  const PasswordResetConfirmationForm({
    super.key,
    required this.emailAddress,
  });

  final String emailAddress;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const MailIcon(),
      const SizedBox(height: 25),
      Text(
        'Check you email',
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      const SizedBox(height: 25),
      Text(
        'We sent a password reset link to',
        style:
            Theme.of(context).textTheme.titleMedium?.copyWith(color: greyColor),
      ),
      const SizedBox(height: 10),
      Text(
        emailAddress,
        style:
            Theme.of(context).textTheme.titleMedium?.copyWith(color: greyColor),
      ),
      standardHeightSizedBox,
      const BackToRouteLink(
        text: 'Back to login',
        routeName: SignInRoute.name,
      ),
    ]);
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
