import 'package:flutter/material.dart';
import 'package:success_check/presentation/core/theming/style.dart';

class ErrorFlushbar extends StatelessWidget {
  final String? title;
  final String? message;
  final BuildContext context;

  ErrorFlushbar({
    super.key,
    this.title,
    this.message,
    required this.context,
  });

  //  : _flushbar = Flushbar(
  //         backgroundColor: flushbarBackgroundColor,
  //         duration: const Duration(seconds: 3),
  //         flushbarStyle: FlushbarStyle.GROUNDED,
  //         borderRadius: const BorderRadius.all(Radius.circular(1)),
  //         padding:
  //             const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 30),
  //         icon: Icon(
  //           Icons.error_outline,
  //           size: flushbarIconSize,
  //           color: flushbarContentColor,
  //         ),
  //         titleText: title != null
  //             ? Text(
  //                 title,
  //                 style: Theme.of(context).textTheme.titleMedium!.copyWith(
  //                       color: flushbarContentColor,
  //                     ),
  //               )
  //             : null,
  //         messageText: message != null
  //             ? Text(
  //                 message,
  //                 style: Theme.of(context).textTheme.bodyMedium!.copyWith(
  //                       color: flushbarContentColor,
  //                     ),
  //               )
  //             : null,
  //       );

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void show() {
    //_flushbar.show(context);
  }
}
