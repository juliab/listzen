import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:listzen/presentation/core/widgets/standard_padding.dart';

class ErrorFlushbar extends StatelessWidget {
  final String title;
  final String message;
  final BuildContext context;
  final SnackBar _snackbar;

  ErrorFlushbar({
    super.key,
    required this.title,
    required this.message,
    required this.context,
  }) : _snackbar = SnackBar(
          elevation: 0,
          padding: StandardPadding.edgeInsetsOnly(
            context: context,
            topFactor: 1.5,
          ),
          behavior: SnackBarBehavior.fixed,
          backgroundColor: Colors.transparent,
          content: AwesomeSnackbarContent(
            title: title,
            message: message,
            contentType: ContentType.failure,
          ),
        );

  @override
  Widget build(BuildContext context) {
    return _snackbar;
  }

  void show() {
    FocusScope.of(context).requestFocus(FocusNode());
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(_snackbar);
  }
}
