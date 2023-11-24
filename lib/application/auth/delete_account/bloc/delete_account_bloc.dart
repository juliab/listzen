import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listzen/domain/auth/auth_failure.dart';
import 'package:listzen/domain/auth/i_auth_facade.dart';
import 'package:listzen/domain/checklists/i_checklist_repository.dart';

part 'delete_account_event.dart';
part 'delete_account_state.dart';
part 'delete_account_bloc.freezed.dart';

class DeleteAccountBloc extends Bloc<DeleteAccountEvent, DeleteAccountState> {
  final IAuthFacade _authFacade;
  final IChecklistRepository _checklistRepository;

  DeleteAccountBloc(
    this._authFacade,
    this._checklistRepository,
  ) : super(DeleteAccountState.initial()) {
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

      await _checklistRepository.deleteAll();
      failureOrSuccess = await _authFacade.deleteAccount();

      failureOrSuccess.fold(
        (l) {},
        (r) async {
          await _authFacade.signOut();
        },
      );

      emit(
        state.copyWith(
          isDeleting: false,
          deleteFailureOrSuccessOption: some(failureOrSuccess),
        ),
      );
    });
  }
}
