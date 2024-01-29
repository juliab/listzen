import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/auth/delete_account/bloc/delete_account_bloc.dart';
import 'package:listzen/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:listzen/injection.dart';
import 'package:listzen/presentation/auth/components/auth_page_scaffold.dart';
import 'package:listzen/presentation/auth/delete_account/delete_account_sign_in_form.dart';
import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/core/widgets/delete_confirmation_dialog.dart';
import 'package:listzen/presentation/core/widgets/error_flushbar.dart';
import 'package:listzen/presentation/core/widgets/in_progress_overlay.dart';
import 'package:listzen/presentation/routes/app_router.dart';

@RoutePage()
class DeleteAccountPage extends StatelessWidget {
  const DeleteAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        _signInBlocProvider(),
        _deleteAccountBlocProvider(),
      ],
      child: MultiBlocListener(
        listeners: [
          _signInBlocListener(),
          _deleteAccountBlocListener(),
        ],
        child: _deleteAccountBlocBuilder(
          child: const AuthPageScaffold(
            form: DeleteAccountSignInForm(),
          ),
        ),
      ),
    );
  }

  BlocProvider<SignInFormBloc> _signInBlocProvider() {
    return BlocProvider<SignInFormBloc>(
      create: (context) => getIt<SignInFormBloc>(),
    );
  }

  BlocProvider<DeleteAccountBloc> _deleteAccountBlocProvider() {
    return BlocProvider<DeleteAccountBloc>(
      create: (context) => getIt<DeleteAccountBloc>(),
    );
  }

  BlocListener<SignInFormBloc, SignInFormState> _signInBlocListener() {
    return BlocListener<SignInFormBloc, SignInFormState>(
      listenWhen: (previous, current) =>
          previous.authFailureOrSuccessOption !=
          current.authFailureOrSuccessOption,
      listener: _listenToAuthFailure,
    );
  }

  BlocListener<DeleteAccountBloc, DeleteAccountState>
      _deleteAccountBlocListener() {
    return BlocListener<DeleteAccountBloc, DeleteAccountState>(
      listenWhen: (previous, current) =>
          previous.deleteFailureOrSuccessOption !=
          current.deleteFailureOrSuccessOption,
      listener: _listenToDeleteFailure,
    );
  }

  BlocBuilder<DeleteAccountBloc, DeleteAccountState> _deleteAccountBlocBuilder({
    required Widget child,
  }) {
    return BlocBuilder<DeleteAccountBloc, DeleteAccountState>(
      buildWhen: (previous, current) =>
          previous.isDeleting != current.isDeleting,
      builder: (context, state) {
        return Stack(
          children: [
            child,
            InProgressOverlay(
              inProgress: state.isDeleting,
            ),
          ],
        );
      },
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
          builder: (context) => _buildDeleteConfirmationDialog(context, bloc),
        );
      }),
    );
  }

  Widget _buildDeleteConfirmationDialog(
    BuildContext context,
    DeleteAccountBloc bloc,
  ) {
    return DeleteConfirmationDialog(
        title: 'Are you sure?',
        text: 'Are you sure you want to delete your account along with all '
            'the checklists you have created?',
        onCancel: () => AutoRouter.of(context)
            .popUntilRouteWithName(ChecklistsOverviewRoute.name),
        onDelete: () {
          AutoRouter.of(context).pop(true);
          bloc.add(const DeleteAccountEvent.deleteConfirmed());
        });
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
          builder: (context) => const AccountDeletedModal(),
        );
      }),
    );
  }
}

class AccountDeletedModal extends StatelessWidget {
  const AccountDeletedModal({
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
                  color: darkColor,
                ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () async =>
              AutoRouter.of(context).push(const ChecklistsOverviewRoute()),
          child: const Text(
            'OK',
          ),
        ),
      ],
    );
  }
}
