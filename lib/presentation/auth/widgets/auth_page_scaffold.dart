import 'package:flutter/material.dart';
import 'package:listzen/presentation/auth/widgets/top_image.dart';
import 'package:listzen/presentation/core/theming/style.dart';

class AuthPageScaffold extends StatelessWidget {
  final Widget form;

  const AuthPageScaffold({
    super.key,
    required this.form,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Stack(
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
                    duration: const Duration(milliseconds: 50),
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
