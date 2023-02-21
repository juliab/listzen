part of 'checklist_actor_bloc.dart';

@freezed
class ChecklistActorEvent with _$ChecklistActorEvent {
  const factory ChecklistActorEvent.deleted(Checklist checklist) = Deleted;
}
