import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:success_check/domain/checklists/card_color.dart';
import 'package:success_check/domain/checklists/checklist.dart';
import 'package:success_check/domain/checklists/checklist_failure.dart';
import 'package:success_check/domain/checklists/i_checklist_repository.dart';
import 'package:success_check/domain/checklists/item.dart';
import 'package:success_check/domain/checklists/value_objects.dart';

part 'checklist_edit_bloc.freezed.dart';
part 'checklist_edit_event.dart';
part 'checklist_edit_state.dart';

@injectable
class ChecklistEditBloc extends Bloc<ChecklistEditEvent, ChecklistEditState> {
  final IChecklistRepository _repository;

  ChecklistEditBloc(this._repository) : super(ChecklistEditState.initial()) {
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
          checklist: state.checklist.copyWith(name: ChecklistName(event.name)),
          saveFailureOrSuccessOption: none(),
        ),
      );
    });
    on<CompletionStatusChanged>(
      (event, emit) async {
        emit(
          state.copyWith(
            checklist: state.checklist.copyWith(
              items: [...state.checklist.items]
                  .map((item) => item.copyWith(done: event.isDone))
                  .toList(),
            ),
            saveFailureOrSuccessOption: none(),
          ),
        );

        if (event.instantSave) {
          final failureOrSuccess = await _repository.update(state.checklist);

          emit(state.copyWith(
            saveFailureOrSuccessOption: optionOf(failureOrSuccess),
          ));
        }
      },
    );
    on<ItemAdded>(
      (event, emit) {
        emit(
          state.copyWith(
            checklist: state.checklist.copyWith(
              items: [...state.checklist.items, Item.empty()],
            ),
            saveFailureOrSuccessOption: none(),
          ),
        );
      },
    );
    on<ItemNameChanged>(
      (event, emit) {
        emit(
          state.copyWith(
            checklist: state.checklist.copyWith(
              items: [...state.checklist.items]
                ..removeAt(event.index)
                ..insert(
                  event.index,
                  state.checklist.items[event.index].copyWith(
                    name: ItemName(event.name),
                    isNew: false,
                  ),
                ),
            ),
            saveFailureOrSuccessOption: none(),
            //autovalidateMode: AutovalidateMode.disabled,
          ),
        );
      },
    );
    on<ItemCompletionStatusChanged>(
      (event, emit) async {
        emit(
          state.copyWith(
            checklist: state.checklist.copyWith(
              items: [...state.checklist.items]
                ..removeAt(event.index)
                ..insert(
                    event.index,
                    state.checklist.items[event.index].copyWith(
                      done: event.isDone,
                      isNew: false,
                    )),
            ),
            saveFailureOrSuccessOption: none(),
          ),
        );
        if (event.instantSave) {
          final failureOrSuccess = await _repository.update(state.checklist);

          emit(state.copyWith(
            saveFailureOrSuccessOption: optionOf(failureOrSuccess),
          ));
        }
      },
    );
    on<ItemsReordered>(
      (event, emit) {
        final oldIndex = event.oldIndex;
        final newIndex =
            oldIndex < event.newIndex ? event.newIndex - 1 : event.newIndex;
        final item = state.checklist.items.elementAt(oldIndex);

        emit(
          state.copyWith(
            checklist: state.checklist.copyWith(
                items: [...state.checklist.items]
                  ..removeAt(oldIndex)
                  ..insert(newIndex, item)),
          ),
        );
      },
    );
    on<ItemRemoved>(
      (event, emit) {
        emit(
          state.copyWith(
            checklist: state.checklist.copyWith(
              items: [...state.checklist.items]..removeAt(event.index),
            ),
          ),
        );
      },
    );
    on<ColorChanged>((event, emit) async {
      emit(
        state.copyWith(
          checklist: state.checklist.copyWith(color: event.color),
          saveFailureOrSuccessOption: none(),
        ),
      );
      if (event.instantSave) {
        final failureOrSuccess = await _repository.update(state.checklist);

        emit(state.copyWith(
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        ));
      }
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

        if (failureOrSuccess.isRight()) {
          emit(state.copyWith(
            isEditing: false,
          ));
        }
      }
    });
  }
}
