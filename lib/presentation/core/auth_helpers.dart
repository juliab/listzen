import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/auth/auth_bloc.dart';

String getUserEmail(BuildContext context) {
  return context.read<AuthBloc>().state.maybeMap(
        authenticated: (state) => state.user.email,
        orElse: () => '',
      );
}

bool userAuthenticated(BuildContext context) {
  return context.read<AuthBloc>().state.maybeMap(
        authenticated: (_) => true,
        orElse: () => false,
      );
}
