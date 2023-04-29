import 'package:flutter/material.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:success_check/presentation/core/theming/themes.dart';

class ErrorFlushbar extends StatelessWidget {
  final String title;
  final String messsage;
  final Flushbar _flushbar;

  ErrorFlushbar({
    super.key,
    required this.title,
    required this.messsage,
  }) : _flushbar = Flushbar(
          backgroundColor: flushbarColor,
          duration: const Duration(seconds: 3),
          flushbarStyle: FlushbarStyle.GROUNDED,
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 30),
          icon: Icon(
            Icons.error_outline,
            size: flushbarIconSize,
            color: backgroundColor,
          ),
          titleText: Text(
            title,
            style: flushbarTitleTextStyle,
          ),
          messageText: Text(
            messsage,
            style: flushbarMessageTextStyle,
          ),
        );

  @override
  Widget build(BuildContext context) {
    return _flushbar;
  }

  void show(BuildContext context) {
    _flushbar.show(context);
  }
}
