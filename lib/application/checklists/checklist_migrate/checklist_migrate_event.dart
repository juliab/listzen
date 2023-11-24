part of 'checklist_migrate_bloc.dart';

@freezed
class ChecklistMigrateEvent with _$ChecklistMigrateEvent {
  const factory ChecklistMigrateEvent.start() = Start;
  const factory ChecklistMigrateEvent.createDestination(
      List<Checklist> checklists) = CreateDestination;
  const factory ChecklistMigrateEvent.deleteOrigin() = DeleteOrigin;
}
