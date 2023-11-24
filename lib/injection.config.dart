// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i10;
import 'application/auth/delete_account/bloc/delete_account_bloc.dart' as _i18;
import 'application/auth/sign_in_form/bloc/sign_in_form_bloc.dart' as _i9;
import 'application/checklists/checklist_actor/checklist_actor_bloc.dart'
    as _i14;
import 'application/checklists/checklist_edit/checklist_edit_bloc.dart' as _i15;
import 'application/checklists/checklist_migrate/checklist_migrate_bloc.dart'
    as _i16;
import 'application/checklists/checklist_watcher/checklist_watcher_bloc.dart'
    as _i17;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/checklists/i_checklist_repository.dart' as _i12;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i8;
import 'infrastructure/checklists/checklist_repository_switcher.dart' as _i13;
import 'infrastructure/checklists/firebase/firebase_checklist_repository.dart'
    as _i11;
import 'infrastructure/checklists/firebase/firebase_injectable_module.dart'
    as _i19;
import 'infrastructure/checklists/sqlite/drift_checklist_repository.dart'
    as _i3;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.DriftChecklistRepository>(
      () => _i3.DriftChecklistRepository());
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i7.IAuthFacade>(() => _i8.FirebaseAuthFacade(
        gh<_i4.FirebaseAuth>(),
        gh<_i6.GoogleSignIn>(),
      ));
  gh.factory<_i9.SignInFormBloc>(
      () => _i9.SignInFormBloc(gh<_i7.IAuthFacade>()));
  gh.factory<_i10.AuthBloc>(() => _i10.AuthBloc(gh<_i7.IAuthFacade>()));
  gh.lazySingleton<_i11.FirebaseChecklistRepository>(
      () => _i11.FirebaseChecklistRepository(
            gh<_i5.FirebaseFirestore>(),
            gh<_i4.FirebaseAuth>(),
          ));
  gh.lazySingleton<_i12.IChecklistRepository>(
      () => _i13.ChecklistRepositorySwitcher(
            gh<_i3.DriftChecklistRepository>(),
            gh<_i11.FirebaseChecklistRepository>(),
          ));
  gh.factory<_i14.ChecklistActorBloc>(
      () => _i14.ChecklistActorBloc(gh<_i12.IChecklistRepository>()));
  gh.factory<_i15.ChecklistEditBloc>(
      () => _i15.ChecklistEditBloc(gh<_i12.IChecklistRepository>()));
  gh.factory<_i16.ChecklistMigrateBloc>(() => _i16.ChecklistMigrateBloc(
        gh<_i11.FirebaseChecklistRepository>(),
        gh<_i3.DriftChecklistRepository>(),
      ));
  gh.factory<_i17.ChecklistWatcherBloc>(
      () => _i17.ChecklistWatcherBloc(gh<_i12.IChecklistRepository>()));
  gh.factory<_i18.DeleteAccountBloc>(() => _i18.DeleteAccountBloc(
        gh<_i7.IAuthFacade>(),
        gh<_i12.IChecklistRepository>(),
      ));
  return getIt;
}

class _$FirebaseInjectableModule extends _i19.FirebaseInjectableModule {}
