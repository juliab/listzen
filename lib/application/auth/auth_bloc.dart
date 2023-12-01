import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:listzen/domain/auth/i_auth_facade.dart';
import 'package:listzen/domain/auth/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _iAuthFacade;

  AuthBloc(this._iAuthFacade) : super(const Initial()) {
    _iAuthFacade.authStateChanges().listen(
          (_) => add(const AuthEvent.authCheckRequested()),
        );

    on<AuthCheckRequested>((event, emit) async {
      final userOption = _iAuthFacade.getSignedInUser();
      userOption.fold(
        () => emit(const AuthState.unauthenticated()),
        (user) => emit(AuthState.authenticated(user)),
      );
    });

    on<SignedOut>((event, emit) async {
      emit(const AuthState.signOutInProgress());
      await _iAuthFacade.signOut();
      emit(const AuthState.unauthenticated());
    });
  }
}
