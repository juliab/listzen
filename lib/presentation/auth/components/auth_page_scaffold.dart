import 'package:flutter/material.dart';
import 'package:listzen/presentation/auth/components/top_image.dart';
import 'package:listzen/presentation/core/keyboard_dismisser.dart';
import 'package:listzen/presentation/core/theming/style.dart';

class AuthPageScaffold extends StatelessWidget {
  final Widget form;

  const AuthPageScaffold({
    super.key,
    required this.form,
  });

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            const MainImage(),
            Column(
              children: [
                const Spacer(),
                form,
                Builder(builder: (context) {
                  final keyboardHeight =
                      MediaQuery.of(context).viewInsets.bottom;
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 10),
                    height: keyboardHeight,
                    color: backgroundColor,
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
