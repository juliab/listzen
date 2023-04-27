part of 'checklist_edit_bloc.dart';

@freezed
class ChecklistEditState with _$ChecklistEditState {
  const factory ChecklistEditState({
    required Checklist checklist,
    required AutovalidateMode autovalidateMode,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<ChecklistFailure, Unit>> saveFailureOrSuccessOption,
  }) = _ChecklistFormState;

  factory ChecklistEditState.initial() => ChecklistEditState(
        checklist: Checklist.empty(),
        autovalidateMode: AutovalidateMode.disabled,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
