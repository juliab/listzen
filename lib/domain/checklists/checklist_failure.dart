import 'package:freezed_annotation/freezed_annotation.dart';

part 'checklist_failure.freezed.dart';

@freezed
abstract class ChecklistFailure with _$ChecklistFailure {
  const factory ChecklistFailure.unexpected() = _Unexpected;
}
