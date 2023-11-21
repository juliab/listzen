part of 'checklist_migrate_bloc.dart';

@freezed
class ChecklistMigrateEvent with _$ChecklistMigrateEvent {
  const factory ChecklistMigrateEvent.start() = Start;
  const factory ChecklistMigrateEvent.createRemote(List<Checklist> checklists) =
      CreateRemote;
  const factory ChecklistMigrateEvent.deleteLocal() = DeleteLocal;
}
