// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChecklistFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToAccess,
    required TResult Function() databaseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? insufficientPermissions,
    TResult? Function()? unableToAccess,
    TResult? Function()? databaseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToAccess,
    TResult Function()? databaseError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(UnableToUpdate value) unableToAccess,
    required TResult Function(DatabaseError value) databaseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected value)? unexpected,
    TResult? Function(InsufficientPermissions value)? insufficientPermissions,
    TResult? Function(UnableToUpdate value)? unableToAccess,
    TResult? Function(DatabaseError value)? databaseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(UnableToUpdate value)? unableToAccess,
    TResult Function(DatabaseError value)? databaseError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChecklistFailureCopyWith<$Res> {
  factory $ChecklistFailureCopyWith(
          ChecklistFailure value, $Res Function(ChecklistFailure) then) =
      _$ChecklistFailureCopyWithImpl<$Res, ChecklistFailure>;
}

/// @nodoc
class _$ChecklistFailureCopyWithImpl<$Res, $Val extends ChecklistFailure>
    implements $ChecklistFailureCopyWith<$Res> {
  _$ChecklistFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnexpectedImplCopyWith<$Res> {
  factory _$$UnexpectedImplCopyWith(
          _$UnexpectedImpl value, $Res Function(_$UnexpectedImpl) then) =
      __$$UnexpectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnexpectedImplCopyWithImpl<$Res>
    extends _$ChecklistFailureCopyWithImpl<$Res, _$UnexpectedImpl>
    implements _$$UnexpectedImplCopyWith<$Res> {
  __$$UnexpectedImplCopyWithImpl(
      _$UnexpectedImpl _value, $Res Function(_$UnexpectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnexpectedImpl implements Unexpected {
  const _$UnexpectedImpl();

  @override
  String toString() {
    return 'ChecklistFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnexpectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToAccess,
    required TResult Function() databaseError,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? insufficientPermissions,
    TResult? Function()? unableToAccess,
    TResult? Function()? databaseError,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToAccess,
    TResult Function()? databaseError,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(UnableToUpdate value) unableToAccess,
    required TResult Function(DatabaseError value) databaseError,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected value)? unexpected,
    TResult? Function(InsufficientPermissions value)? insufficientPermissions,
    TResult? Function(UnableToUpdate value)? unableToAccess,
    TResult? Function(DatabaseError value)? databaseError,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(UnableToUpdate value)? unableToAccess,
    TResult Function(DatabaseError value)? databaseError,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements ChecklistFailure {
  const factory Unexpected() = _$UnexpectedImpl;
}

/// @nodoc
abstract class _$$InsufficientPermissionsImplCopyWith<$Res> {
  factory _$$InsufficientPermissionsImplCopyWith(
          _$InsufficientPermissionsImpl value,
          $Res Function(_$InsufficientPermissionsImpl) then) =
      __$$InsufficientPermissionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InsufficientPermissionsImplCopyWithImpl<$Res>
    extends _$ChecklistFailureCopyWithImpl<$Res, _$InsufficientPermissionsImpl>
    implements _$$InsufficientPermissionsImplCopyWith<$Res> {
  __$$InsufficientPermissionsImplCopyWithImpl(
      _$InsufficientPermissionsImpl _value,
      $Res Function(_$InsufficientPermissionsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InsufficientPermissionsImpl implements InsufficientPermissions {
  const _$InsufficientPermissionsImpl();

  @override
  String toString() {
    return 'ChecklistFailure.insufficientPermissions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsufficientPermissionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToAccess,
    required TResult Function() databaseError,
  }) {
    return insufficientPermissions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? insufficientPermissions,
    TResult? Function()? unableToAccess,
    TResult? Function()? databaseError,
  }) {
    return insufficientPermissions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToAccess,
    TResult Function()? databaseError,
    required TResult orElse(),
  }) {
    if (insufficientPermissions != null) {
      return insufficientPermissions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(UnableToUpdate value) unableToAccess,
    required TResult Function(DatabaseError value) databaseError,
  }) {
    return insufficientPermissions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected value)? unexpected,
    TResult? Function(InsufficientPermissions value)? insufficientPermissions,
    TResult? Function(UnableToUpdate value)? unableToAccess,
    TResult? Function(DatabaseError value)? databaseError,
  }) {
    return insufficientPermissions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(UnableToUpdate value)? unableToAccess,
    TResult Function(DatabaseError value)? databaseError,
    required TResult orElse(),
  }) {
    if (insufficientPermissions != null) {
      return insufficientPermissions(this);
    }
    return orElse();
  }
}

abstract class InsufficientPermissions implements ChecklistFailure {
  const factory InsufficientPermissions() = _$InsufficientPermissionsImpl;
}

/// @nodoc
abstract class _$$UnableToUpdateImplCopyWith<$Res> {
  factory _$$UnableToUpdateImplCopyWith(_$UnableToUpdateImpl value,
          $Res Function(_$UnableToUpdateImpl) then) =
      __$$UnableToUpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnableToUpdateImplCopyWithImpl<$Res>
    extends _$ChecklistFailureCopyWithImpl<$Res, _$UnableToUpdateImpl>
    implements _$$UnableToUpdateImplCopyWith<$Res> {
  __$$UnableToUpdateImplCopyWithImpl(
      _$UnableToUpdateImpl _value, $Res Function(_$UnableToUpdateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnableToUpdateImpl implements UnableToUpdate {
  const _$UnableToUpdateImpl();

  @override
  String toString() {
    return 'ChecklistFailure.unableToAccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnableToUpdateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToAccess,
    required TResult Function() databaseError,
  }) {
    return unableToAccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? insufficientPermissions,
    TResult? Function()? unableToAccess,
    TResult? Function()? databaseError,
  }) {
    return unableToAccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToAccess,
    TResult Function()? databaseError,
    required TResult orElse(),
  }) {
    if (unableToAccess != null) {
      return unableToAccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(UnableToUpdate value) unableToAccess,
    required TResult Function(DatabaseError value) databaseError,
  }) {
    return unableToAccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected value)? unexpected,
    TResult? Function(InsufficientPermissions value)? insufficientPermissions,
    TResult? Function(UnableToUpdate value)? unableToAccess,
    TResult? Function(DatabaseError value)? databaseError,
  }) {
    return unableToAccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(UnableToUpdate value)? unableToAccess,
    TResult Function(DatabaseError value)? databaseError,
    required TResult orElse(),
  }) {
    if (unableToAccess != null) {
      return unableToAccess(this);
    }
    return orElse();
  }
}

abstract class UnableToUpdate implements ChecklistFailure {
  const factory UnableToUpdate() = _$UnableToUpdateImpl;
}

/// @nodoc
abstract class _$$DatabaseErrorImplCopyWith<$Res> {
  factory _$$DatabaseErrorImplCopyWith(
          _$DatabaseErrorImpl value, $Res Function(_$DatabaseErrorImpl) then) =
      __$$DatabaseErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DatabaseErrorImplCopyWithImpl<$Res>
    extends _$ChecklistFailureCopyWithImpl<$Res, _$DatabaseErrorImpl>
    implements _$$DatabaseErrorImplCopyWith<$Res> {
  __$$DatabaseErrorImplCopyWithImpl(
      _$DatabaseErrorImpl _value, $Res Function(_$DatabaseErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DatabaseErrorImpl implements DatabaseError {
  const _$DatabaseErrorImpl();

  @override
  String toString() {
    return 'ChecklistFailure.databaseError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DatabaseErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToAccess,
    required TResult Function() databaseError,
  }) {
    return databaseError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? insufficientPermissions,
    TResult? Function()? unableToAccess,
    TResult? Function()? databaseError,
  }) {
    return databaseError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToAccess,
    TResult Function()? databaseError,
    required TResult orElse(),
  }) {
    if (databaseError != null) {
      return databaseError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(UnableToUpdate value) unableToAccess,
    required TResult Function(DatabaseError value) databaseError,
  }) {
    return databaseError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected value)? unexpected,
    TResult? Function(InsufficientPermissions value)? insufficientPermissions,
    TResult? Function(UnableToUpdate value)? unableToAccess,
    TResult? Function(DatabaseError value)? databaseError,
  }) {
    return databaseError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(UnableToUpdate value)? unableToAccess,
    TResult Function(DatabaseError value)? databaseError,
    required TResult orElse(),
  }) {
    if (databaseError != null) {
      return databaseError(this);
    }
    return orElse();
  }
}

abstract class DatabaseError implements ChecklistFailure {
  const factory DatabaseError() = _$DatabaseErrorImpl;
}
