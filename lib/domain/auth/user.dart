import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listzen/domain/auth/value_objects.dart';

part 'user.freezed.dart';

enum AuthProvider {
  email,
  google,
  apple,
}

@freezed
class User with _$User {
  const factory User({
    required UniqueId id,
    required String email,
    required AuthProvider provider,
  }) = _User;
}
