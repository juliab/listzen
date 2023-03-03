part of 'checklist_watcher_bloc.dart';

@freezed
class ChecklistWatcherState with _$ChecklistWatcherState {
  const factory ChecklistWatcherState.initial() = Initial;
  const factory ChecklistWatcherState.loadInProgress() = LoadInProgress;
  const factory ChecklistWatcherState.loadSuccess(List<Checklist> checklists) =
      LoadInSuccess;
  const factory ChecklistWatcherState.loadFailure(ChecklistFailure failure) =
      LoadFailure;
}
