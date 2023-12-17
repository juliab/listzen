import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:listzen/presentation/auth/widgets/top_image.dart';

class AuthPageScaffold extends StatelessWidget {
  final Widget form;

  const AuthPageScaffold({
    super.key,
    required this.form,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  KeyboardVisibilityBuilder(builder: (_, isKeyboardVisible) {
                    final keyboardHeight =
                        MediaQuery.of(context).viewInsets.bottom;
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      height: isKeyboardVisible ? keyboardHeight : 0,
                    );
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
