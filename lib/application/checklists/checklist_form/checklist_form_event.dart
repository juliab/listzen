part of 'checklist_form_bloc.dart';

@freezed
class ChecklistFormEvent with _$ChecklistFormEvent {
  const factory ChecklistFormEvent.initialized(
      Option<Checklist> initialChecklistOption) = Initialized;
  const factory ChecklistFormEvent.nameChanged(String name) = NameChanged;
  const factory ChecklistFormEvent.itemsChanged(List<ItemPrimitive> items) =
      ItemsChanged;
  const factory ChecklistFormEvent.saved() = Saved;
}
