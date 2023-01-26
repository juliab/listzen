import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:success_check/domain/auth/i_auth_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _iAuthFacade;

  AuthBloc(this._iAuthFacade) : super(const Initial()) {
    on<AuthCheckRequested>((event, emit) async {
      final userOption = _iAuthFacade.getSignedInUser();
      userOption.fold(
        () => emit(const AuthState.unauthenticated()),
        (a) => emit(const AuthState.authenticated()),
      );
    });

    on<SignedOut>((event, emit) async {
      await _iAuthFacade.signOut();
      emit(const AuthState.unauthenticated());
    });
  }
}
