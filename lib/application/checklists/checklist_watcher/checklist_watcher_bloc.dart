import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:success_check/domain/checklists/checklist.dart';
import 'package:success_check/domain/checklists/checklist_failure.dart';
import 'package:success_check/domain/checklists/i_checklist_repository.dart';

part 'checklist_watcher_event.dart';
part 'checklist_watcher_state.dart';
part 'checklist_watcher_bloc.freezed.dart';

@injectable
class ChecklistWatcherBloc
    extends Bloc<ChecklistWatcherEvent, ChecklistWatcherState> {
  final IChecklistRepository _checklistRepository;

  late StreamSubscription<Either<ChecklistFailure, List<Checklist>>>
      _allChecklistsStreamSubscription;

  late StreamSubscription<Either<ChecklistFailure, List<Checklist>>>
      _uncompletedChecklistsStreamSubscription;

  ChecklistWatcherBloc(this._checklistRepository) : super(const Initial()) {
    on<WatchAllStarted>((event, emit) async {
      emit(const ChecklistWatcherState.loadInProgress());
      _allChecklistsStreamSubscription = _checklistRepository.watchAll().listen(
            (failureOrChecklists) => add(
              ChecklistWatcherEvent.checklistsReceived(failureOrChecklists),
            ),
          );
    });
    on<WatchUncompletedStarted>((event, emit) async {
      emit(const ChecklistWatcherState.loadInProgress());
      _uncompletedChecklistsStreamSubscription =
          _checklistRepository.watchUncompleted().listen(
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
  }

  @override
  Future<void> close() async {
    await _allChecklistsStreamSubscription.cancel();
    await _uncompletedChecklistsStreamSubscription.cancel();
    return super.close();
  }
}
