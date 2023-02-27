part of 'checklist_watcher_bloc.dart';

@freezed
class ChecklistWatcherState with _$ChecklistWatcherState {
  const factory ChecklistWatcherState.initial() = _Initial;
  const factory ChecklistWatcherState.loadInProgress() = _LoadInProgress;
  const factory ChecklistWatcherState.loadSuccess(List<Checklist> checklists) =
      _LoadInSuccess;
  const factory ChecklistWatcherState.loadFailure(ChecklistFailure failure) =
      _LoadFailure;
}
