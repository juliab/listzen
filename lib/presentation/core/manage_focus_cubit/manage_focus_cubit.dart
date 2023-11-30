import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'manage_focus_cubit_state.dart';
part 'manage_focus_cubit.freezed.dart';

@injectable
class ManageFocusCubit extends Cubit<ManageFocusState> {
  ManageFocusCubit() : super(ManageFocusState.initial());

  void initializeFocusNodes(int numberOfNodes) {
    final focusNodes = <FocusNode>[];
    for (int i = 0; i < numberOfNodes; i++) {
      focusNodes.add(FocusNode(debugLabel: 'Item $i'));
    }
    emit(state.copyWith(nodes: focusNodes));
  }

  void addNodeAndRequestFocus() {
    final newItemIndex = state.nodes.length;
    emit(
      state.copyWith(
        nodes: [
          ...state.nodes,
          FocusNode(debugLabel: 'Item $newItemIndex'),
        ],
      ),
    );
    state.nodes.last.requestFocus();
  }

  @override
  Future<void> close() {
    for (final node in state.nodes) {
      node.dispose();
    }
    return super.close();
  }
}
