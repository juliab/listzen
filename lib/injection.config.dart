// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:sqflite/sqflite.dart' as _i3;

import 'application/auth/auth_bloc.dart' as _i12;
import 'application/auth/delete_account/bloc/delete_account_bloc.dart' as _i19;
import 'application/auth/sign_in_form/bloc/sign_in_form_bloc.dart' as _i10;
import 'application/checklists/checklist_actor/checklist_actor_bloc.dart'
    as _i16;
import 'application/checklists/checklist_edit/checklist_edit_bloc.dart' as _i17;
import 'application/checklists/checklist_watcher/checklist_watcher_bloc.dart'
    as _i18;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/checklists/i_checklist_repository.dart' as _i14;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'infrastructure/checklists/checklist_repository_decorator.dart' as _i15;
import 'infrastructure/checklists/firebase/firebase_checklist_repository.dart'
    as _i13;
import 'infrastructure/checklists/firebase/firebase_injectable_module.dart'
    as _i21;
import 'infrastructure/checklists/sqlite/drift_checklist_repository.dart'
    as _i4;
import 'infrastructure/checklists/sqlite/sqlite_database.dart' as _i11;
import 'infrastructure/checklists/sqlite/sqlite_injectable_module.dart' as _i20;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final sqliteInjectableModule = _$SqliteInjectableModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  await gh.factoryAsync<_i3.Database>(
    () => sqliteInjectableModule.database,
    preResolve: true,
  );
  gh.lazySingleton<_i4.DriftChecklistRepository>(
      () => _i4.DriftChecklistRepository());
  gh.lazySingleton<_i5.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i6.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i7.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i8.IAuthFacade>(() => _i9.FirebaseAuthFacade(
        gh<_i5.FirebaseAuth>(),
        gh<_i7.GoogleSignIn>(),
      ));
  gh.factory<_i10.SignInFormBloc>(
      () => _i10.SignInFormBloc(gh<_i8.IAuthFacade>()));
  gh.factory<_i11.SqliteDatabase>(() => _i11.SqliteDatabase());
  gh.factory<_i12.AuthBloc>(() => _i12.AuthBloc(gh<_i8.IAuthFacade>()));
  gh.lazySingleton<_i13.FirebaseChecklistRepository>(
      () => _i13.FirebaseChecklistRepository(
            gh<_i6.FirebaseFirestore>(),
            gh<_i5.FirebaseAuth>(),
          ));
  gh.lazySingleton<_i14.IChecklistRepository>(
      () => _i15.ChecklistRepositoryDecorator(
            gh<_i4.DriftChecklistRepository>(),
            gh<_i13.FirebaseChecklistRepository>(),
          ));
  gh.factory<_i16.ChecklistActorBloc>(
      () => _i16.ChecklistActorBloc(gh<_i14.IChecklistRepository>()));
  gh.factory<_i17.ChecklistEditBloc>(
      () => _i17.ChecklistEditBloc(gh<_i14.IChecklistRepository>()));
  gh.factory<_i18.ChecklistWatcherBloc>(
      () => _i18.ChecklistWatcherBloc(gh<_i14.IChecklistRepository>()));
  gh.factory<_i19.DeleteAccountBloc>(() => _i19.DeleteAccountBloc(
        gh<_i8.IAuthFacade>(),
        gh<_i14.IChecklistRepository>(),
      ));
  return getIt;
}

class _$SqliteInjectableModule extends _i20.SqliteInjectableModule {}

class _$FirebaseInjectableModule extends _i21.FirebaseInjectableModule {}
