part of 'checklist_watcher_bloc.dart';

@freezed
class ChecklistWatcherEvent with _$ChecklistWatcherEvent {
  const factory ChecklistWatcherEvent.watchAllStarted() = WatchAllStarted;
  const factory ChecklistWatcherEvent.checklistsReceived(
          Either<ChecklistFailure, List<Checklist>> failureOrChecklists) =
      ChecklistsReceived;
}
