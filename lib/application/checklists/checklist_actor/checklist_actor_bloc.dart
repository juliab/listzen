import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:success_check/domain/checklists/checklist.dart';
import 'package:success_check/domain/checklists/checklist_failure.dart';
import 'package:success_check/domain/checklists/i_checklist_repository.dart';

part 'checklist_actor_bloc.freezed.dart';
part 'checklist_actor_event.dart';
part 'checklist_actor_state.dart';

@injectable
class ChecklistActorBloc
    extends Bloc<ChecklistActorEvent, ChecklistActorState> {
  final IChecklistRepository _checklistRepository;

  ChecklistActorBloc(this._checklistRepository) : super(const _Initial()) {
    on<Deleted>((event, emit) async {
      emit(const ChecklistActorState.actionInProgress());
      final possibleFailure =
          await _checklistRepository.delete(event.checklist);
      emit(
        possibleFailure.fold(
          (f) => ChecklistActorState.deleteFailure(f),
          (_) => const ChecklistActorState.deleteSuccess(),
        ),
      );
    });
  }
}
