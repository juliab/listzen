part of 'checklist_edit_bloc.dart';

@freezed
class ChecklistEditEvent with _$ChecklistEditEvent {
  const factory ChecklistEditEvent.initialized(
      Option<Checklist> initialChecklistOption) = Initialized;

  const factory ChecklistEditEvent.nameChanged(String name) = NameChanged;

  const factory ChecklistEditEvent.completionStatusChanged(
      {required bool isDone}) = CompletionStatusChanged;

  const factory ChecklistEditEvent.itemAdded() = ItemAdded;

  const factory ChecklistEditEvent.itemNameChanged({
    required int index,
    required String name,
  }) = ItemNameChanged;

  const factory ChecklistEditEvent.itemCompletionStatusChanged({
    required int index,
    required bool isDone,
  }) = ItemCompletionStatusChanged;

  const factory ChecklistEditEvent.itemRemoved({required int index}) =
      ItemRemoved;

  const factory ChecklistEditEvent.saved() = Saved;
}
