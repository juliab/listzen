// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_migrate_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChecklistMigrateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(List<Checklist> checklists) createDestination,
    required TResult Function() deleteOrigin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(List<Checklist> checklists)? createDestination,
    TResult? Function()? deleteOrigin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(List<Checklist> checklists)? createDestination,
    TResult Function()? deleteOrigin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Start value) start,
    required TResult Function(CreateDestination value) createDestination,
    required TResult Function(DeleteOrigin value) deleteOrigin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Start value)? start,
    TResult? Function(CreateDestination value)? createDestination,
    TResult? Function(DeleteOrigin value)? deleteOrigin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Start value)? start,
    TResult Function(CreateDestination value)? createDestination,
    TResult Function(DeleteOrigin value)? deleteOrigin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChecklistMigrateEventCopyWith<$Res> {
  factory $ChecklistMigrateEventCopyWith(ChecklistMigrateEvent value,
          $Res Function(ChecklistMigrateEvent) then) =
      _$ChecklistMigrateEventCopyWithImpl<$Res, ChecklistMigrateEvent>;
}

/// @nodoc
class _$ChecklistMigrateEventCopyWithImpl<$Res,
        $Val extends ChecklistMigrateEvent>
    implements $ChecklistMigrateEventCopyWith<$Res> {
  _$ChecklistMigrateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartImplCopyWith<$Res> {
  factory _$$StartImplCopyWith(
          _$StartImpl value, $Res Function(_$StartImpl) then) =
      __$$StartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartImplCopyWithImpl<$Res>
    extends _$ChecklistMigrateEventCopyWithImpl<$Res, _$StartImpl>
    implements _$$StartImplCopyWith<$Res> {
  __$$StartImplCopyWithImpl(
      _$StartImpl _value, $Res Function(_$StartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartImpl implements Start {
  const _$StartImpl();

  @override
  String toString() {
    return 'ChecklistMigrateEvent.start()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(List<Checklist> checklists) createDestination,
    required TResult Function() deleteOrigin,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(List<Checklist> checklists)? createDestination,
    TResult? Function()? deleteOrigin,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(List<Checklist> checklists)? createDestination,
    TResult Function()? deleteOrigin,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Start value) start,
    required TResult Function(CreateDestination value) createDestination,
    required TResult Function(DeleteOrigin value) deleteOrigin,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Start value)? start,
    TResult? Function(CreateDestination value)? createDestination,
    TResult? Function(DeleteOrigin value)? deleteOrigin,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Start value)? start,
    TResult Function(CreateDestination value)? createDestination,
    TResult Function(DeleteOrigin value)? deleteOrigin,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class Start implements ChecklistMigrateEvent {
  const factory Start() = _$StartImpl;
}

/// @nodoc
abstract class _$$CreateDestinationImplCopyWith<$Res> {
  factory _$$CreateDestinationImplCopyWith(_$CreateDestinationImpl value,
          $Res Function(_$CreateDestinationImpl) then) =
      __$$CreateDestinationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Checklist> checklists});
}

/// @nodoc
class __$$CreateDestinationImplCopyWithImpl<$Res>
    extends _$ChecklistMigrateEventCopyWithImpl<$Res, _$CreateDestinationImpl>
    implements _$$CreateDestinationImplCopyWith<$Res> {
  __$$CreateDestinationImplCopyWithImpl(_$CreateDestinationImpl _value,
      $Res Function(_$CreateDestinationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checklists = null,
  }) {
    return _then(_$CreateDestinationImpl(
      null == checklists
          ? _value._checklists
          : checklists // ignore: cast_nullable_to_non_nullable
              as List<Checklist>,
    ));
  }
}

/// @nodoc

class _$CreateDestinationImpl implements CreateDestination {
  const _$CreateDestinationImpl(final List<Checklist> checklists)
      : _checklists = checklists;

  final List<Checklist> _checklists;
  @override
  List<Checklist> get checklists {
    if (_checklists is EqualUnmodifiableListView) return _checklists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_checklists);
  }

  @override
  String toString() {
    return 'ChecklistMigrateEvent.createDestination(checklists: $checklists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDestinationImpl &&
            const DeepCollectionEquality()
                .equals(other._checklists, _checklists));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_checklists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateDestinationImplCopyWith<_$CreateDestinationImpl> get copyWith =>
      __$$CreateDestinationImplCopyWithImpl<_$CreateDestinationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(List<Checklist> checklists) createDestination,
    required TResult Function() deleteOrigin,
  }) {
    return createDestination(checklists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(List<Checklist> checklists)? createDestination,
    TResult? Function()? deleteOrigin,
  }) {
    return createDestination?.call(checklists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(List<Checklist> checklists)? createDestination,
    TResult Function()? deleteOrigin,
    required TResult orElse(),
  }) {
    if (createDestination != null) {
      return createDestination(checklists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Start value) start,
    required TResult Function(CreateDestination value) createDestination,
    required TResult Function(DeleteOrigin value) deleteOrigin,
  }) {
    return createDestination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Start value)? start,
    TResult? Function(CreateDestination value)? createDestination,
    TResult? Function(DeleteOrigin value)? deleteOrigin,
  }) {
    return createDestination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Start value)? start,
    TResult Function(CreateDestination value)? createDestination,
    TResult Function(DeleteOrigin value)? deleteOrigin,
    required TResult orElse(),
  }) {
    if (createDestination != null) {
      return createDestination(this);
    }
    return orElse();
  }
}

abstract class CreateDestination implements ChecklistMigrateEvent {
  const factory CreateDestination(final List<Checklist> checklists) =
      _$CreateDestinationImpl;

  List<Checklist> get checklists;
  @JsonKey(ignore: true)
  _$$CreateDestinationImplCopyWith<_$CreateDestinationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteOriginImplCopyWith<$Res> {
  factory _$$DeleteOriginImplCopyWith(
          _$DeleteOriginImpl value, $Res Function(_$DeleteOriginImpl) then) =
      __$$DeleteOriginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteOriginImplCopyWithImpl<$Res>
    extends _$ChecklistMigrateEventCopyWithImpl<$Res, _$DeleteOriginImpl>
    implements _$$DeleteOriginImplCopyWith<$Res> {
  __$$DeleteOriginImplCopyWithImpl(
      _$DeleteOriginImpl _value, $Res Function(_$DeleteOriginImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteOriginImpl implements DeleteOrigin {
  const _$DeleteOriginImpl();

  @override
  String toString() {
    return 'ChecklistMigrateEvent.deleteOrigin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteOriginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(List<Checklist> checklists) createDestination,
    required TResult Function() deleteOrigin,
  }) {
    return deleteOrigin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(List<Checklist> checklists)? createDestination,
    TResult? Function()? deleteOrigin,
  }) {
    return deleteOrigin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(List<Checklist> checklists)? createDestination,
    TResult Function()? deleteOrigin,
    required TResult orElse(),
  }) {
    if (deleteOrigin != null) {
      return deleteOrigin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Start value) start,
    required TResult Function(CreateDestination value) createDestination,
    required TResult Function(DeleteOrigin value) deleteOrigin,
  }) {
    return deleteOrigin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Start value)? start,
    TResult? Function(CreateDestination value)? createDestination,
    TResult? Function(DeleteOrigin value)? deleteOrigin,
  }) {
    return deleteOrigin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Start value)? start,
    TResult Function(CreateDestination value)? createDestination,
    TResult Function(DeleteOrigin value)? deleteOrigin,
    required TResult orElse(),
  }) {
    if (deleteOrigin != null) {
      return deleteOrigin(this);
    }
    return orElse();
  }
}

abstract class DeleteOrigin implements ChecklistMigrateEvent {
  const factory DeleteOrigin() = _$DeleteOriginImpl;
}

/// @nodoc
mixin _$ChecklistMigrateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(ChecklistFailure checklistFailure)
        migrationFailure,
    required TResult Function() migrationSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(ChecklistFailure checklistFailure)? migrationFailure,
    TResult? Function()? migrationSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(ChecklistFailure checklistFailure)? migrationFailure,
    TResult Function()? migrationSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(MigrationFailure value) migrationFailure,
    required TResult Function(MigrationSuccess value) migrationSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(InProgress value)? inProgress,
    TResult? Function(MigrationFailure value)? migrationFailure,
    TResult? Function(MigrationSuccess value)? migrationSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InProgress value)? inProgress,
    TResult Function(MigrationFailure value)? migrationFailure,
    TResult Function(MigrationSuccess value)? migrationSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChecklistMigrateStateCopyWith<$Res> {
  factory $ChecklistMigrateStateCopyWith(ChecklistMigrateState value,
          $Res Function(ChecklistMigrateState) then) =
      _$ChecklistMigrateStateCopyWithImpl<$Res, ChecklistMigrateState>;
}

/// @nodoc
class _$ChecklistMigrateStateCopyWithImpl<$Res,
        $Val extends ChecklistMigrateState>
    implements $ChecklistMigrateStateCopyWith<$Res> {
  _$ChecklistMigrateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ChecklistMigrateStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ChecklistMigrateState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(ChecklistFailure checklistFailure)
        migrationFailure,
    required TResult Function() migrationSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(ChecklistFailure checklistFailure)? migrationFailure,
    TResult? Function()? migrationSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(ChecklistFailure checklistFailure)? migrationFailure,
    TResult Function()? migrationSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(MigrationFailure value) migrationFailure,
    required TResult Function(MigrationSuccess value) migrationSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(InProgress value)? inProgress,
    TResult? Function(MigrationFailure value)? migrationFailure,
    TResult? Function(MigrationSuccess value)? migrationSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InProgress value)? inProgress,
    TResult Function(MigrationFailure value)? migrationFailure,
    TResult Function(MigrationSuccess value)? migrationSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ChecklistMigrateState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$InProgressImplCopyWith<$Res> {
  factory _$$InProgressImplCopyWith(
          _$InProgressImpl value, $Res Function(_$InProgressImpl) then) =
      __$$InProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InProgressImplCopyWithImpl<$Res>
    extends _$ChecklistMigrateStateCopyWithImpl<$Res, _$InProgressImpl>
    implements _$$InProgressImplCopyWith<$Res> {
  __$$InProgressImplCopyWithImpl(
      _$InProgressImpl _value, $Res Function(_$InProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InProgressImpl implements InProgress {
  const _$InProgressImpl();

  @override
  String toString() {
    return 'ChecklistMigrateState.inProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(ChecklistFailure checklistFailure)
        migrationFailure,
    required TResult Function() migrationSuccess,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(ChecklistFailure checklistFailure)? migrationFailure,
    TResult? Function()? migrationSuccess,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(ChecklistFailure checklistFailure)? migrationFailure,
    TResult Function()? migrationSuccess,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(MigrationFailure value) migrationFailure,
    required TResult Function(MigrationSuccess value) migrationSuccess,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(InProgress value)? inProgress,
    TResult? Function(MigrationFailure value)? migrationFailure,
    TResult? Function(MigrationSuccess value)? migrationSuccess,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InProgress value)? inProgress,
    TResult Function(MigrationFailure value)? migrationFailure,
    TResult Function(MigrationSuccess value)? migrationSuccess,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class InProgress implements ChecklistMigrateState {
  const factory InProgress() = _$InProgressImpl;
}

/// @nodoc
abstract class _$$MigrationFailureImplCopyWith<$Res> {
  factory _$$MigrationFailureImplCopyWith(_$MigrationFailureImpl value,
          $Res Function(_$MigrationFailureImpl) then) =
      __$$MigrationFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChecklistFailure checklistFailure});

  $ChecklistFailureCopyWith<$Res> get checklistFailure;
}

/// @nodoc
class __$$MigrationFailureImplCopyWithImpl<$Res>
    extends _$ChecklistMigrateStateCopyWithImpl<$Res, _$MigrationFailureImpl>
    implements _$$MigrationFailureImplCopyWith<$Res> {
  __$$MigrationFailureImplCopyWithImpl(_$MigrationFailureImpl _value,
      $Res Function(_$MigrationFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checklistFailure = null,
  }) {
    return _then(_$MigrationFailureImpl(
      null == checklistFailure
          ? _value.checklistFailure
          : checklistFailure // ignore: cast_nullable_to_non_nullable
              as ChecklistFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ChecklistFailureCopyWith<$Res> get checklistFailure {
    return $ChecklistFailureCopyWith<$Res>(_value.checklistFailure, (value) {
      return _then(_value.copyWith(checklistFailure: value));
    });
  }
}

/// @nodoc

class _$MigrationFailureImpl implements MigrationFailure {
  const _$MigrationFailureImpl(this.checklistFailure);

  @override
  final ChecklistFailure checklistFailure;

  @override
  String toString() {
    return 'ChecklistMigrateState.migrationFailure(checklistFailure: $checklistFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MigrationFailureImpl &&
            (identical(other.checklistFailure, checklistFailure) ||
                other.checklistFailure == checklistFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, checklistFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MigrationFailureImplCopyWith<_$MigrationFailureImpl> get copyWith =>
      __$$MigrationFailureImplCopyWithImpl<_$MigrationFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(ChecklistFailure checklistFailure)
        migrationFailure,
    required TResult Function() migrationSuccess,
  }) {
    return migrationFailure(checklistFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(ChecklistFailure checklistFailure)? migrationFailure,
    TResult? Function()? migrationSuccess,
  }) {
    return migrationFailure?.call(checklistFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(ChecklistFailure checklistFailure)? migrationFailure,
    TResult Function()? migrationSuccess,
    required TResult orElse(),
  }) {
    if (migrationFailure != null) {
      return migrationFailure(checklistFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(MigrationFailure value) migrationFailure,
    required TResult Function(MigrationSuccess value) migrationSuccess,
  }) {
    return migrationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(InProgress value)? inProgress,
    TResult? Function(MigrationFailure value)? migrationFailure,
    TResult? Function(MigrationSuccess value)? migrationSuccess,
  }) {
    return migrationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InProgress value)? inProgress,
    TResult Function(MigrationFailure value)? migrationFailure,
    TResult Function(MigrationSuccess value)? migrationSuccess,
    required TResult orElse(),
  }) {
    if (migrationFailure != null) {
      return migrationFailure(this);
    }
    return orElse();
  }
}

abstract class MigrationFailure implements ChecklistMigrateState {
  const factory MigrationFailure(final ChecklistFailure checklistFailure) =
      _$MigrationFailureImpl;

  ChecklistFailure get checklistFailure;
  @JsonKey(ignore: true)
  _$$MigrationFailureImplCopyWith<_$MigrationFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MigrationSuccessImplCopyWith<$Res> {
  factory _$$MigrationSuccessImplCopyWith(_$MigrationSuccessImpl value,
          $Res Function(_$MigrationSuccessImpl) then) =
      __$$MigrationSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MigrationSuccessImplCopyWithImpl<$Res>
    extends _$ChecklistMigrateStateCopyWithImpl<$Res, _$MigrationSuccessImpl>
    implements _$$MigrationSuccessImplCopyWith<$Res> {
  __$$MigrationSuccessImplCopyWithImpl(_$MigrationSuccessImpl _value,
      $Res Function(_$MigrationSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MigrationSuccessImpl implements MigrationSuccess {
  const _$MigrationSuccessImpl();

  @override
  String toString() {
    return 'ChecklistMigrateState.migrationSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MigrationSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(ChecklistFailure checklistFailure)
        migrationFailure,
    required TResult Function() migrationSuccess,
  }) {
    return migrationSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(ChecklistFailure checklistFailure)? migrationFailure,
    TResult? Function()? migrationSuccess,
  }) {
    return migrationSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(ChecklistFailure checklistFailure)? migrationFailure,
    TResult Function()? migrationSuccess,
    required TResult orElse(),
  }) {
    if (migrationSuccess != null) {
      return migrationSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(MigrationFailure value) migrationFailure,
    required TResult Function(MigrationSuccess value) migrationSuccess,
  }) {
    return migrationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(InProgress value)? inProgress,
    TResult? Function(MigrationFailure value)? migrationFailure,
    TResult? Function(MigrationSuccess value)? migrationSuccess,
  }) {
    return migrationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InProgress value)? inProgress,
    TResult Function(MigrationFailure value)? migrationFailure,
    TResult Function(MigrationSuccess value)? migrationSuccess,
    required TResult orElse(),
  }) {
    if (migrationSuccess != null) {
      return migrationSuccess(this);
    }
    return orElse();
  }
}

abstract class MigrationSuccess implements ChecklistMigrateState {
  const factory MigrationSuccess() = _$MigrationSuccessImpl;
}
