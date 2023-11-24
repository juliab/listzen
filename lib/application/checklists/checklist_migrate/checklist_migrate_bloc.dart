import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listzen/domain/checklists/checklist.dart';
import 'package:listzen/domain/checklists/checklist_failure.dart';
import 'package:listzen/domain/checklists/i_checklist_repository.dart';

part 'checklist_migrate_event.dart';
part 'checklist_migrate_state.dart';
part 'checklist_migrate_bloc.freezed.dart';

class ChecklistMigrateBloc
    extends Bloc<ChecklistMigrateEvent, ChecklistMigrateState> {
  final IChecklistRepository _origin;
  final IChecklistRepository _destination;

  ChecklistMigrateBloc(this._origin, this._destination)
      : super(const ChecklistMigrateState.initial()) {
    on<Start>(
      (event, emit) async {
        emit(const ChecklistMigrateState.inProgress());

        final failureOrChecklists = await _origin.getAll();

        failureOrChecklists.fold(
          (failure) => emit(ChecklistMigrateState.migrationFailure(failure)),
          (checklists) =>
              add(ChecklistMigrateEvent.createDestination(checklists)),
        );
      },
    );

    on<CreateDestination>((event, emit) async {
      Either<ChecklistFailure, Unit> failureOrSuccess = right(unit);

      for (final checklist in event.checklists) {
        failureOrSuccess = await _destination.create(checklist);

        if (failureOrSuccess.isLeft()) {
          break;
        }
      }

      failureOrSuccess.fold(
        (failure) => emit(ChecklistMigrateState.migrationFailure(failure)),
        (checklists) => add(const ChecklistMigrateEvent.deleteOrigin()),
      );
    });

    on<DeleteOrigin>((event, emit) async {
      final failureOrSuccess = await _origin.deleteAll();
      emit(failureOrSuccess.fold(
        (failure) => ChecklistMigrateState.migrationFailure(failure),
        (_) => const ChecklistMigrateState.migrationSuccess(),
      ));
    });
  }
}
