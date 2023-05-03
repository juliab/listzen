part of 'checklist_edit_bloc.dart';

@freezed
class ChecklistEditEvent with _$ChecklistEditEvent {
  const factory ChecklistEditEvent.initialized(
      Option<Checklist> initialChecklistOption) = Initialized;

  const factory ChecklistEditEvent.nameChanged(String name) = NameChanged;

  const factory ChecklistEditEvent.completionStatusChanged({
    required bool isDone,
    @Default(false) bool instantSave,
  }) = CompletionStatusChanged;

  const factory ChecklistEditEvent.itemAdded() = ItemAdded;

  const factory ChecklistEditEvent.itemNameChanged({
    required int index,
    required String name,
  }) = ItemNameChanged;

  const factory ChecklistEditEvent.itemCompletionStatusChanged({
    required int index,
    required bool isDone,
    @Default(false) bool instantSave,
  }) = ItemCompletionStatusChanged;

  const factory ChecklistEditEvent.itemsReordered({
    required int oldIndex,
    required int newIndex,
  }) = ItemsReordered;

  const factory ChecklistEditEvent.itemRemoved({required int index}) =
      ItemRemoved;

  const factory ChecklistEditEvent.saved() = Saved;
}
