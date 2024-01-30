import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:listzen/presentation/auth/components/auth_form_container.dart';
import 'package:listzen/presentation/auth/components/auth_page_scaffold.dart';
import 'package:listzen/presentation/auth/components/back_to_route_link.dart';
import 'package:listzen/presentation/auth/theming/style.dart';
import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/core/widgets/spacing.dart';
import 'package:listzen/presentation/core/widgets/standard_padding.dart';
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
      const Spacing.vertical(factor: 2),
      Text(
        'Check you email',
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      const Spacing.vertical(factor: 2),
      Text(
        'We sent a password reset link to',
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: greyColor,
            ),
      ),
      const Spacing.vertical(factor: 0.5),
      Text(
        emailAddress,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: greyColor,
            ),
      ),
      const Spacing.vertical(factor: 3),
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
      padding: StandardPadding.edgeInsetsAll(context: context, factor: 0.8),
      child: Container(
        padding: StandardPadding.edgeInsetsAll(context: context, factor: 0.8),
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
