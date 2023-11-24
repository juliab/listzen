import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:listzen/application/auth/delete_account/bloc/delete_account_bloc.dart';
import 'package:listzen/application/checklists/checklist_actor/checklist_actor_bloc.dart';
import 'package:listzen/application/checklists/checklist_edit/checklist_edit_bloc.dart';
import 'package:listzen/application/checklists/checklist_migrate/checklist_migrate_bloc.dart';
import 'package:listzen/application/checklists/checklist_watcher/checklist_watcher_bloc.dart';
import 'package:listzen/domain/auth/i_auth_facade.dart';
import 'package:listzen/infrastructure/checklists/firebase/firebase_checklist_repository.dart';
import 'package:listzen/infrastructure/checklists/sqlite/drift_checklist_repository.dart';
import 'package:listzen/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies() async {
  init(getIt);

  getIt.registerFactory<DeleteAccountBloc>(
    () => DeleteAccountBloc(
      getIt<IAuthFacade>(),
      getIt<FirebaseChecklistRepository>(),
    ),
  );

  getIt.registerFactory<ChecklistMigrateBloc>(
    () => ChecklistMigrateBloc(
      getIt<DriftChecklistRepository>(),
      getIt<FirebaseChecklistRepository>(),
    ),
  );
}

void registerRepositoryBlocks({bool remoteRepository = false}) {
  final repository = remoteRepository
      ? getIt<FirebaseChecklistRepository>()
      : getIt<DriftChecklistRepository>();

  if (getIt.isRegistered<ChecklistActorBloc>()) {
    getIt.unregister<ChecklistActorBloc>();
  }
  getIt.registerFactory<ChecklistActorBloc>(
    () => ChecklistActorBloc(repository),
  );

  if (getIt.isRegistered<ChecklistEditBloc>()) {
    getIt.unregister<ChecklistEditBloc>();
  }
  getIt.registerFactory<ChecklistEditBloc>(
    () => ChecklistEditBloc(repository),
  );

  if (getIt.isRegistered<ChecklistWatcherBloc>()) {
    getIt.unregister<ChecklistWatcherBloc>();
  }
  getIt.registerFactory<ChecklistWatcherBloc>(
    () => ChecklistWatcherBloc(repository),
  );
}
