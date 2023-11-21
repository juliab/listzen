import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:listzen/domain/checklists/checklist.dart';
import 'package:listzen/domain/checklists/checklist_failure.dart';
import 'package:listzen/infrastructure/checklists/firebase/firebase_checklist_repository.dart';
import 'package:listzen/infrastructure/checklists/sqlite/drift_checklist_repository.dart';

part 'checklist_migrate_event.dart';
part 'checklist_migrate_state.dart';
part 'checklist_migrate_bloc.freezed.dart';

@injectable
class ChecklistMigrateBloc
    extends Bloc<ChecklistMigrateEvent, ChecklistMigrateState> {
  final FirebaseChecklistRepository _firebaseRepository;
  final DriftChecklistRepository _localRepository;

  ChecklistMigrateBloc(this._firebaseRepository, this._localRepository)
      : super(const ChecklistMigrateState.initial()) {
    on<Start>(
      (event, emit) async {
        emit(const ChecklistMigrateState.inProgress());

        final failureOrChecklists = await _localRepository.getAll();

        failureOrChecklists.fold(
          (failure) => emit(ChecklistMigrateState.migrationFailure(failure)),
          (checklists) => add(ChecklistMigrateEvent.createRemote(checklists)),
        );
      },
    );

    on<CreateRemote>((event, emit) async {
      Either<ChecklistFailure, Unit> failureOrSuccess = right(unit);

      for (final checklist in event.checklists) {
        failureOrSuccess = await _firebaseRepository.create(checklist);

        if (failureOrSuccess.isLeft()) {
          break;
        }
      }

      failureOrSuccess.fold(
        (failure) => emit(ChecklistMigrateState.migrationFailure(failure)),
        (checklists) => add(const ChecklistMigrateEvent.deleteLocal()),
      );
    });

    on<DeleteLocal>((event, emit) async {
      final failureOrSuccess = await _localRepository.deleteAll();
      emit(failureOrSuccess.fold(
        (failure) => ChecklistMigrateState.migrationFailure(failure),
        (_) => const ChecklistMigrateState.migrationSuccess(),
      ));
    });
  }
}
