part of 'checklist_migrate_bloc.dart';

@freezed
class ChecklistMigrateState with _$ChecklistMigrateState {
  const factory ChecklistMigrateState.initial() = Initial;
  const factory ChecklistMigrateState.inProgress() = InProgress;
  const factory ChecklistMigrateState.migrationFailure(
      ChecklistFailure checklistFailure) = MigrationFailure;
  const factory ChecklistMigrateState.migrationSuccess() = MigrationSuccess;
}
