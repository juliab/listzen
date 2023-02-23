// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i9;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:success_check/application/auth/auth_bloc.dart' as _i11;
import 'package:success_check/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart'
    as _i10;
import 'package:success_check/application/checklists/checklist_actor/checklist_actor_bloc.dart'
    as _i12;
import 'package:success_check/application/checklists/checklist_watcher/checklist_watcher_bloc.dart'
    as _i13;
import 'package:success_check/domain/auth/i_auth_facade.dart' as _i5;
import 'package:success_check/domain/checklists/i_checklist_repository.dart'
    as _i7;
import 'package:success_check/infrastructure/auth/firebase_auth_facade.dart'
    as _i6;
import 'package:success_check/infrastructure/checklists/checklist_repository.dart'
    as _i8;

import 'infrastructure/core/firebase_injectable_module.dart' as _i14;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
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
  gh.lazySingleton<_i4.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i5.IAuthFacade>(() => _i6.FirebaseAuthFacade(
        gh<_i3.FirebaseAuth>(),
        gh<_i4.GoogleSignIn>(),
      ));
  gh.lazySingleton<_i7.IChecklistRepository>(
      () => _i8.ChecklistRepository(gh<_i9.FirebaseFirestore>()));
  gh.factory<_i10.SignInFormBloc>(
      () => _i10.SignInFormBloc(gh<_i5.IAuthFacade>()));
  gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(gh<_i5.IAuthFacade>()));
  gh.factory<_i12.ChecklistActorBloc>(
      () => _i12.ChecklistActorBloc(gh<_i7.IChecklistRepository>()));
  gh.factory<_i13.ChecklistWatcherBloc>(
      () => _i13.ChecklistWatcherBloc(gh<_i7.IChecklistRepository>()));
  return getIt;
}

class _$FirebaseInjectableModule extends _i14.FirebaseInjectableModule {}
