import 'package:freezed_annotation/freezed_annotation.dart';

part 'checklist_failure.freezed.dart';

@freezed
class ChecklistFailure with _$ChecklistFailure {
  const factory ChecklistFailure.unexpected() = Unexpected;
  const factory ChecklistFailure.insufficientPermissions() =
      InsufficientPermissions;
  const factory ChecklistFailure.unableToAccess() = UnableToUpdate;
  const factory ChecklistFailure.databaseError() = DatabaseError;
}
