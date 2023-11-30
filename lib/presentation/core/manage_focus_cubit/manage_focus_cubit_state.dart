part of 'manage_focus_cubit.dart';

@freezed
class ManageFocusState with _$ManageFocusState {
  factory ManageFocusState({
    required List<FocusNode> nodes,
  }) = _ManageFocusState;

  factory ManageFocusState.initial() => ManageFocusState(
        nodes: [],
      );
}
