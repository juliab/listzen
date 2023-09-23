import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:listzen/domain/auth/auth_failure.dart';
import 'package:listzen/domain/auth/i_auth_facade.dart';

part 'delete_account_event.dart';
part 'delete_account_state.dart';
part 'delete_account_bloc.freezed.dart';

@injectable
class DeleteAccountBloc extends Bloc<DeleteAccountEvent, DeleteAccountState> {
  final IAuthFacade _authFacade;

  DeleteAccountBloc(this._authFacade) : super(DeleteAccountState.initial()) {
    on<DeleteConfirmed>((event, emit) async {
      Either<AuthFailure, Unit> failureOrSuccess;

      _authFacade.getSignedInUser().fold(() {
        emit(
          state.copyWith(
            deleteFailureOrSuccessOption:
                some(left(const AuthFailure.userUnauthenticated())),
          ),
        );
      }, (user) {
        emit(
          state.copyWith(
            isDeleting: true,
            deleteFailureOrSuccessOption: none(),
          ),
        );
      });

      failureOrSuccess = await _authFacade.deleteAccount();

      emit(
        state.copyWith(
          isDeleting: false,
          deleteFailureOrSuccessOption: some(failureOrSuccess),
        ),
      );
    });
  }
}
