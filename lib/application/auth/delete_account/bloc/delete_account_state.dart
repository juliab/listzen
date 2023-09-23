part of 'delete_account_bloc.dart';

@freezed
class DeleteAccountState with _$DeleteAccountState {
  const factory DeleteAccountState({
    required bool isDeleting,
    required Option<Either<AuthFailure, Unit>> deleteFailureOrSuccessOption,
  }) = _DeleteAccountState;

  factory DeleteAccountState.initial() => DeleteAccountState(
        isDeleting: false,
        deleteFailureOrSuccessOption: none(),
      );
}
