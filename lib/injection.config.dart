// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i11;
import 'application/auth/sign_in_form/bloc/sign_in_form_bloc.dart' as _i10;
import 'application/checklists/checklist_actor/checklist_actor_bloc.dart'
    as _i12;
import 'application/checklists/checklist_edit/checklist_edit_bloc.dart' as _i13;
import 'application/checklists/checklist_watcher/checklist_watcher_bloc.dart'
    as _i14;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/checklists/i_checklist_repository.dart' as _i8;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/checklists/checklist_repository.dart' as _i9;
import 'infrastructure/core/firebase_injectable_module.dart' as _i15;

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
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i6.IAuthFacade>(() => _i7.FirebaseAuthFacade(
        gh<_i3.FirebaseAuth>(),
        gh<_i5.GoogleSignIn>(),
      ));
  gh.lazySingleton<_i8.IChecklistRepository>(
      () => _i9.ChecklistRepository(gh<_i4.FirebaseFirestore>()));
  gh.factory<_i10.SignInFormBloc>(
      () => _i10.SignInFormBloc(gh<_i6.IAuthFacade>()));
  gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(gh<_i6.IAuthFacade>()));
  gh.factory<_i12.ChecklistActorBloc>(
      () => _i12.ChecklistActorBloc(gh<_i8.IChecklistRepository>()));
  gh.factory<_i13.ChecklistEditBloc>(
      () => _i13.ChecklistEditBloc(gh<_i8.IChecklistRepository>()));
  gh.factory<_i14.ChecklistWatcherBloc>(
      () => _i14.ChecklistWatcherBloc(gh<_i8.IChecklistRepository>()));
  return getIt;
}

class _$FirebaseInjectableModule extends _i15.FirebaseInjectableModule {}
