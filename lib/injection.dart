import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:listzen/application/checklists/checklist_migrate/checklist_migrate_bloc.dart';
import 'package:listzen/infrastructure/checklists/firebase/firebase_checklist_repository.dart';
import 'package:listzen/infrastructure/checklists/sqlite/sqlite_checklist_repository.dart';
import 'package:listzen/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies() async {
  init(getIt);
  getIt.registerFactory<ChecklistMigrateBloc>(
    () => ChecklistMigrateBloc(
      getIt<FirebaseChecklistRepository>(),
      getIt<SqliteChecklistRepository>(),
    ),
  );
}
