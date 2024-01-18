import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:listzen/domain/checklists/checklist_failure.dart';
import 'package:listzen/infrastructure/checklists/sqlite/sqlite_checklist_repository.dart';
import 'package:listzen/infrastructure/checklists/sqlite/sqlite_database.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../data/test_data_generator.dart';
import 'sqlite_checklist_repository_test.mocks.dart';

@GenerateMocks([SqliteDatabase])
void main() {
  late SqliteChecklistRepository repository;
  late MockSqliteDatabase mockDatabase;

  setUp(() {
    mockDatabase = MockSqliteDatabase();
    repository = SqliteChecklistRepository(mockDatabase);
  });

  group('create method tests', () {
    final checklist = TestDataGenerator.basicChecklist();

    test('Should return unit if record was created successfully', () async {
      // arrange
      when(mockDatabase.createChecklist(any))
          .thenAnswer((_) async => right(unit));

      // act
      final result = await repository.create(checklist);

      // assert
      expect(result, right(unit));
    });
    test('Should return databaseError if database throws exception', () async {
      // arrange
      when(mockDatabase.createChecklist(any))
          .thenAnswer((_) => throw Exception());

      // act
      final result = await repository.create(checklist);

      // assert
      expect(result, left(const ChecklistFailure.databaseError()));
    });
  });
}
