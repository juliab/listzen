part of 'checklist_form_bloc.dart';

@freezed
class ChecklistFormState with _$ChecklistFormState {
  const factory ChecklistFormState({
    required Checklist checklist,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<ChecklistFailure, Unit>> saveFailureOrSuccessOption,
  }) = _ChecklistFormState;

  factory ChecklistFormState.initial() => ChecklistFormState(
        checklist: Checklist.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
