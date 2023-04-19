import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:success_check/domain/checklists/checklist.dart';
import 'package:success_check/domain/checklists/checklist_failure.dart';
import 'package:success_check/domain/checklists/i_checklist_repository.dart';
import 'package:success_check/domain/checklists/value_objects.dart';
import 'package:success_check/presentation/checklists/edit_checklist/misc/item_presentation_classes.dart';

part 'checklist_form_bloc.freezed.dart';
part 'checklist_form_event.dart';
part 'checklist_form_state.dart';

@injectable
class ChecklistFormBloc extends Bloc<ChecklistFormEvent, ChecklistFormState> {
  final IChecklistRepository _repository;

  ChecklistFormBloc(this._repository) : super(ChecklistFormState.initial()) {
    on<Initialized>((event, emit) {
      emit(
        event.initialChecklistOption.fold(
          () => state,
          (initialChecklist) => state.copyWith(
            checklist: initialChecklist,
            isEditing: true,
          ),
        ),
      );
    });
    on<NameChanged>((event, emit) {
      emit(
        state.copyWith(
          checklist: state.checklist.copyWith(name: CheckListName(event.name)),
          saveFailureOrSuccessOption: none(),
        ),
      );
    });
    on<ItemsChanged>((event, emit) {
      emit(
        state.copyWith(
          checklist: state.checklist.copyWith(
            items: event.items
                .map((itemPrimitive) => itemPrimitive.toDomain())
                .toList(),
          ),
          saveFailureOrSuccessOption: none(),
        ),
      );
    });
    on<Saved>((event, emit) async {
      emit(
        state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        ),
      );

      if (state.checklist.failureOption.isSome()) {
        emit(state.copyWith(
          isSaving: false,
          autovalidateMode: AutovalidateMode.always,
        ));
      }

      if (state.checklist.failureOption.isNone()) {
        final failureOrSuccess = state.isEditing
            ? await _repository.update(state.checklist)
            : await _repository.create(state.checklist);

        emit(state.copyWith(
          isSaving: false,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        ));
      }
    });
  }
}
