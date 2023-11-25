import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:listzen/domain/checklists/checklist.dart';
import 'package:listzen/domain/checklists/checklist_failure.dart';
import 'package:listzen/domain/checklists/i_checklist_repository.dart';

part 'checklist_watcher_event.dart';
part 'checklist_watcher_state.dart';
part 'checklist_watcher_bloc.freezed.dart';

@injectable
class ChecklistWatcherBloc
    extends Bloc<ChecklistWatcherEvent, ChecklistWatcherState> {
  final IChecklistRepository _repository;

  StreamSubscription<Either<ChecklistFailure, List<Checklist>>>?
      _allChecklistsStreamSubscription;

  ChecklistWatcherBloc(this._repository) : super(const Initial()) {
    on<WatchAllStarted>((event, emit) async {
      emit(const ChecklistWatcherState.loadInProgress());
      _allChecklistsStreamSubscription = _repository.watchAll().listen(
            (failureOrChecklists) => add(
              ChecklistWatcherEvent.checklistsReceived(failureOrChecklists),
            ),
          );
    });

    on<ChecklistsReceived>((event, emit) {
      emit(
        event.failureOrChecklists.fold(
          (f) => ChecklistWatcherState.loadFailure(f),
          (checklists) => ChecklistWatcherState.loadSuccess(checklists),
        ),
      );
    });

    on<StopWatching>((event, emit) {});
  }

  @override
  Future<void> close() async {
    await _allChecklistsStreamSubscription?.cancel();
    print('Stream is closed');
    return super.close();
  }
}
