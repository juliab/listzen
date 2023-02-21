part of 'checklist_actor_bloc.dart';

@freezed
abstract class ChecklistActorState with _$ChecklistActorState {
  const factory ChecklistActorState.initial() = _Initial;
  const factory ChecklistActorState.actionInProgress() = _ActionInProgress;
  const factory ChecklistActorState.deleteFailure(
      ChecklistFailure checklistFailure) = _DeleteFailure;
  const factory ChecklistActorState.deleteSuccess() = _DeleteSuccess;
}
