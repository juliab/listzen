import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:success_check/presentation/core/theming/themes.dart';
import 'package:success_check/presentation/routes/app_router.dart';

class ForgotPasswordLink extends StatelessWidget {
  const ForgotPasswordLink({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(const ResetPasswordRoute());
      },
      child: ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (bounds) => buttonGradient.createShader(
          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
        ),
        child: const Text(
          'Forgot password?',
        ),
      ),
    );
  }
}
