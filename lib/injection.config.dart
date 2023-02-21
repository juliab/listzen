// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:success_check/application/auth/auth_bloc.dart' as _i11;
import 'package:success_check/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart'
    as _i10;
import 'package:success_check/application/checklists/checklist_actor/checklist_actor_bloc.dart'
    as _i3;
import 'package:success_check/application/checklists/checklist_watcher/checklist_watcher_bloc.dart'
    as _i5;
import 'package:success_check/domain/auth/i_auth_facade.dart' as _i8;
import 'package:success_check/domain/checklists/i_checklist_repository.dart'
    as _i4;
import 'package:success_check/infrastructure/auth/firebase_auth_facade.dart'
    as _i9;

import 'infrastructure/core/firebase_injectable_module.dart' as _i12;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
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
  gh.factory<_i3.ChecklistActorBloc>(
      () => _i3.ChecklistActorBloc(gh<_i4.IChecklistRepository>()));
  gh.factory<_i5.ChecklistWatcherBloc>(
      () => _i5.ChecklistWatcherBloc(gh<_i4.IChecklistRepository>()));
  gh.lazySingleton<_i6.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i7.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i8.IAuthFacade>(() => _i9.FirebaseAuthFacade(
        gh<_i6.FirebaseAuth>(),
        gh<_i7.GoogleSignIn>(),
      ));
  gh.factory<_i10.SignInFormBloc>(
      () => _i10.SignInFormBloc(gh<_i8.IAuthFacade>()));
  gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(gh<_i8.IAuthFacade>()));
  return getIt;
}

class _$FirebaseInjectableModule extends _i12.FirebaseInjectableModule {}
