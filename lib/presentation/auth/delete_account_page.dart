import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:listzen/application/auth/delete_account/bloc/delete_account_bloc.dart';
import 'package:listzen/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:listzen/injection.dart';
import 'package:listzen/presentation/auth/widgets/delete_account_confirmation_dialog.dart';
import 'package:listzen/presentation/auth/widgets/delete_account_sign_in_form.dart';
import 'package:listzen/presentation/auth/widgets/top_image.dart';
import 'package:listzen/presentation/core/error_flushbar.dart';
import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/core/widgets/in_progress_overlay.dart';
import 'package:listzen/presentation/routes/app_router.dart';

@RoutePage()
class DeleteAccountPage extends StatelessWidget {
  const DeleteAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SignInFormBloc>(
          create: (context) => getIt<SignInFormBloc>(),
        ),
        BlocProvider<DeleteAccountBloc>(
          create: (context) => getIt<DeleteAccountBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<SignInFormBloc, SignInFormState>(
            listenWhen: (previous, current) =>
                previous.authFailureOrSuccessOption !=
                current.authFailureOrSuccessOption,
            listener: _listenToAuthFailure,
          ),
          BlocListener<DeleteAccountBloc, DeleteAccountState>(
            listenWhen: (previous, current) =>
                previous.deleteFailureOrSuccessOption !=
                current.deleteFailureOrSuccessOption,
            listener: _listenToDeleteFailure,
          ),
        ],
        child: BlocBuilder<DeleteAccountBloc, DeleteAccountState>(
            buildWhen: (previous, current) =>
                previous.isDeleting != current.isDeleting,
            builder: (context, state) {
              return Stack(
                children: [
                  const DeleteAccountPageScaffold(),
                  InProgressOverlay(
                    inProgress: state.isDeleting,
                  ),
                ],
              );
            }),
      ),
    );
  }

  void _listenToAuthFailure(BuildContext context, SignInFormState state) {
    state.authFailureOrSuccessOption.fold(
      () {},
      (either) => either.fold((failure) {
        final errorMessage = failure.maybeMap(
          cancelledByUser: (_) => 'Sign in cancelled',
          serverError: (_) => 'Server error. Please try again later.',
          invalidEmailAndPasswordCombination: (_) =>
              'Wrong password. Please try again.',
          orElse: () => 'Authentication error. Please contact support.',
        );
        ErrorFlushbar(
          title: 'Error',
          message: errorMessage,
          context: context,
        ).show();
      }, (_) {
        final bloc = context.read<DeleteAccountBloc>();
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => const DeleteAccountConfirmationDialog(),
        ).then((value) {
          if (value == true) {
            bloc.add(const DeleteAccountEvent.deleteConfirmed());
          }
        });
      }),
    );
  }

  void _listenToDeleteFailure(BuildContext context, DeleteAccountState state) {
    state.deleteFailureOrSuccessOption.fold(
      () {},
      (either) => either.fold((failure) {
        final errorMessage = failure.maybeMap(
          userRequiresRecentLogin: (_) => 'User requires recent login',
          serverError: (_) => 'Server error. Please try again later.',
          orElse: () =>
              'Unable to delete user account. Please contact support.',
        );
        ErrorFlushbar(
          title: 'Error',
          message: errorMessage,
          context: context,
        ).show();
      }, (_) {
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => const AccountDeletedDialog(),
        );
      }),
    );
  }
}

class AccountDeletedDialog extends StatelessWidget {
  const AccountDeletedDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      content: Column(
        children: [
          Text(
            'Your account has been deleted successfully',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: darkColor,
                ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () async {
            AutoRouter.of(context).push(const SignInRoute());
          },
          child: const Text(
            'OK',
          ),
        ),
      ],
    );
  }
}

class DeleteAccountPageScaffold extends StatelessWidget {
  const DeleteAccountPageScaffold({
    super.key,
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
            KeyboardVisibilityBuilder(
              builder: (context, isKeyboardVisible) => Align(
                alignment: isKeyboardVisible
                    ? const Alignment(0, -0.4)
                    : Alignment.bottomCenter,
                child: const DeleteAccountSignInForm(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}