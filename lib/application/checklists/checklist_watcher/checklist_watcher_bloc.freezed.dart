// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChecklistWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(
            Either<ChecklistFailure, List<Checklist>> failureOrChecklists)
        checklistsReceived,
    required TResult Function() stopWatching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(
            Either<ChecklistFailure, List<Checklist>> failureOrChecklists)?
        checklistsReceived,
    TResult? Function()? stopWatching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<ChecklistFailure, List<Checklist>> failureOrChecklists)?
        checklistsReceived,
    TResult Function()? stopWatching,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchAllStarted value) watchAllStarted,
    required TResult Function(ChecklistsReceived value) checklistsReceived,
    required TResult Function(StopWatching value) stopWatching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchAllStarted value)? watchAllStarted,
    TResult? Function(ChecklistsReceived value)? checklistsReceived,
    TResult? Function(StopWatching value)? stopWatching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(ChecklistsReceived value)? checklistsReceived,
    TResult Function(StopWatching value)? stopWatching,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChecklistWatcherEventCopyWith<$Res> {
  factory $ChecklistWatcherEventCopyWith(ChecklistWatcherEvent value,
          $Res Function(ChecklistWatcherEvent) then) =
      _$ChecklistWatcherEventCopyWithImpl<$Res, ChecklistWatcherEvent>;
}

/// @nodoc
class _$ChecklistWatcherEventCopyWithImpl<$Res,
        $Val extends ChecklistWatcherEvent>
    implements $ChecklistWatcherEventCopyWith<$Res> {
  _$ChecklistWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WatchAllStartedImplCopyWith<$Res> {
  factory _$$WatchAllStartedImplCopyWith(_$WatchAllStartedImpl value,
          $Res Function(_$WatchAllStartedImpl) then) =
      __$$WatchAllStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchAllStartedImplCopyWithImpl<$Res>
    extends _$ChecklistWatcherEventCopyWithImpl<$Res, _$WatchAllStartedImpl>
    implements _$$WatchAllStartedImplCopyWith<$Res> {
  __$$WatchAllStartedImplCopyWithImpl(
      _$WatchAllStartedImpl _value, $Res Function(_$WatchAllStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WatchAllStartedImpl implements WatchAllStarted {
  const _$WatchAllStartedImpl();

  @override
  String toString() {
    return 'ChecklistWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WatchAllStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(
            Either<ChecklistFailure, List<Checklist>> failureOrChecklists)
        checklistsReceived,
    required TResult Function() stopWatching,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(
            Either<ChecklistFailure, List<Checklist>> failureOrChecklists)?
        checklistsReceived,
    TResult? Function()? stopWatching,
  }) {
    return watchAllStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<ChecklistFailure, List<Checklist>> failureOrChecklists)?
        checklistsReceived,
    TResult Function()? stopWatching,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchAllStarted value) watchAllStarted,
    required TResult Function(ChecklistsReceived value) checklistsReceived,
    required TResult Function(StopWatching value) stopWatching,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchAllStarted value)? watchAllStarted,
    TResult? Function(ChecklistsReceived value)? checklistsReceived,
    TResult? Function(StopWatching value)? stopWatching,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(ChecklistsReceived value)? checklistsReceived,
    TResult Function(StopWatching value)? stopWatching,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class WatchAllStarted implements ChecklistWatcherEvent {
  const factory WatchAllStarted() = _$WatchAllStartedImpl;
}

/// @nodoc
abstract class _$$ChecklistsReceivedImplCopyWith<$Res> {
  factory _$$ChecklistsReceivedImplCopyWith(_$ChecklistsReceivedImpl value,
          $Res Function(_$ChecklistsReceivedImpl) then) =
      __$$ChecklistsReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<ChecklistFailure, List<Checklist>> failureOrChecklists});
}

/// @nodoc
class __$$ChecklistsReceivedImplCopyWithImpl<$Res>
    extends _$ChecklistWatcherEventCopyWithImpl<$Res, _$ChecklistsReceivedImpl>
    implements _$$ChecklistsReceivedImplCopyWith<$Res> {
  __$$ChecklistsReceivedImplCopyWithImpl(_$ChecklistsReceivedImpl _value,
      $Res Function(_$ChecklistsReceivedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrChecklists = null,
  }) {
    return _then(_$ChecklistsReceivedImpl(
      null == failureOrChecklists
          ? _value.failureOrChecklists
          : failureOrChecklists // ignore: cast_nullable_to_non_nullable
              as Either<ChecklistFailure, List<Checklist>>,
    ));
  }
}

/// @nodoc

class _$ChecklistsReceivedImpl implements ChecklistsReceived {
  const _$ChecklistsReceivedImpl(this.failureOrChecklists);

  @override
  final Either<ChecklistFailure, List<Checklist>> failureOrChecklists;

  @override
  String toString() {
    return 'ChecklistWatcherEvent.checklistsReceived(failureOrChecklists: $failureOrChecklists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChecklistsReceivedImpl &&
            (identical(other.failureOrChecklists, failureOrChecklists) ||
                other.failureOrChecklists == failureOrChecklists));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrChecklists);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChecklistsReceivedImplCopyWith<_$ChecklistsReceivedImpl> get copyWith =>
      __$$ChecklistsReceivedImplCopyWithImpl<_$ChecklistsReceivedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(
            Either<ChecklistFailure, List<Checklist>> failureOrChecklists)
        checklistsReceived,
    required TResult Function() stopWatching,
  }) {
    return checklistsReceived(failureOrChecklists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(
            Either<ChecklistFailure, List<Checklist>> failureOrChecklists)?
        checklistsReceived,
    TResult? Function()? stopWatching,
  }) {
    return checklistsReceived?.call(failureOrChecklists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<ChecklistFailure, List<Checklist>> failureOrChecklists)?
        checklistsReceived,
    TResult Function()? stopWatching,
    required TResult orElse(),
  }) {
    if (checklistsReceived != null) {
      return checklistsReceived(failureOrChecklists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchAllStarted value) watchAllStarted,
    required TResult Function(ChecklistsReceived value) checklistsReceived,
    required TResult Function(StopWatching value) stopWatching,
  }) {
    return checklistsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchAllStarted value)? watchAllStarted,
    TResult? Function(ChecklistsReceived value)? checklistsReceived,
    TResult? Function(StopWatching value)? stopWatching,
  }) {
    return checklistsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(ChecklistsReceived value)? checklistsReceived,
    TResult Function(StopWatching value)? stopWatching,
    required TResult orElse(),
  }) {
    if (checklistsReceived != null) {
      return checklistsReceived(this);
    }
    return orElse();
  }
}

abstract class ChecklistsReceived implements ChecklistWatcherEvent {
  const factory ChecklistsReceived(
          final Either<ChecklistFailure, List<Checklist>> failureOrChecklists) =
      _$ChecklistsReceivedImpl;

  Either<ChecklistFailure, List<Checklist>> get failureOrChecklists;
  @JsonKey(ignore: true)
  _$$ChecklistsReceivedImplCopyWith<_$ChecklistsReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StopWatchingImplCopyWith<$Res> {
  factory _$$StopWatchingImplCopyWith(
          _$StopWatchingImpl value, $Res Function(_$StopWatchingImpl) then) =
      __$$StopWatchingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopWatchingImplCopyWithImpl<$Res>
    extends _$ChecklistWatcherEventCopyWithImpl<$Res, _$StopWatchingImpl>
    implements _$$StopWatchingImplCopyWith<$Res> {
  __$$StopWatchingImplCopyWithImpl(
      _$StopWatchingImpl _value, $Res Function(_$StopWatchingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StopWatchingImpl implements StopWatching {
  const _$StopWatchingImpl();

  @override
  String toString() {
    return 'ChecklistWatcherEvent.stopWatching()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopWatchingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(
            Either<ChecklistFailure, List<Checklist>> failureOrChecklists)
        checklistsReceived,
    required TResult Function() stopWatching,
  }) {
    return stopWatching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(
            Either<ChecklistFailure, List<Checklist>> failureOrChecklists)?
        checklistsReceived,
    TResult? Function()? stopWatching,
  }) {
    return stopWatching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<ChecklistFailure, List<Checklist>> failureOrChecklists)?
        checklistsReceived,
    TResult Function()? stopWatching,
    required TResult orElse(),
  }) {
    if (stopWatching != null) {
      return stopWatching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchAllStarted value) watchAllStarted,
    required TResult Function(ChecklistsReceived value) checklistsReceived,
    required TResult Function(StopWatching value) stopWatching,
  }) {
    return stopWatching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchAllStarted value)? watchAllStarted,
    TResult? Function(ChecklistsReceived value)? checklistsReceived,
    TResult? Function(StopWatching value)? stopWatching,
  }) {
    return stopWatching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchAllStarted value)? watchAllStarted,
    TResult Function(ChecklistsReceived value)? checklistsReceived,
    TResult Function(StopWatching value)? stopWatching,
    required TResult orElse(),
  }) {
    if (stopWatching != null) {
      return stopWatching(this);
    }
    return orElse();
  }
}

abstract class StopWatching implements ChecklistWatcherEvent {
  const factory StopWatching() = _$StopWatchingImpl;
}

/// @nodoc
mixin _$ChecklistWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Checklist> checklists) loadSuccess,
    required TResult Function(ChecklistFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Checklist> checklists)? loadSuccess,
    TResult? Function(ChecklistFailure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Checklist> checklists)? loadSuccess,
    TResult Function(ChecklistFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadInSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadInProgress value)? loadInProgress,
    TResult? Function(LoadInSuccess value)? loadSuccess,
    TResult? Function(LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadInSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChecklistWatcherStateCopyWith<$Res> {
  factory $ChecklistWatcherStateCopyWith(ChecklistWatcherState value,
          $Res Function(ChecklistWatcherState) then) =
      _$ChecklistWatcherStateCopyWithImpl<$Res, ChecklistWatcherState>;
}

/// @nodoc
class _$ChecklistWatcherStateCopyWithImpl<$Res,
        $Val extends ChecklistWatcherState>
    implements $ChecklistWatcherStateCopyWith<$Res> {
  _$ChecklistWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$ChecklistWatcherStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ChecklistWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Checklist> checklists) loadSuccess,
    required TResult Function(ChecklistFailure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Checklist> checklists)? loadSuccess,
    TResult? Function(ChecklistFailure failure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Checklist> checklists)? loadSuccess,
    TResult Function(ChecklistFailure failure)? loadFailure,
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
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadInSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadInProgress value)? loadInProgress,
    TResult? Function(LoadInSuccess value)? loadSuccess,
    TResult? Function(LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadInSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ChecklistWatcherState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$ChecklistWatcherStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadInProgressImpl implements LoadInProgress {
  const _$LoadInProgressImpl();

  @override
  String toString() {
    return 'ChecklistWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Checklist> checklists) loadSuccess,
    required TResult Function(ChecklistFailure failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Checklist> checklists)? loadSuccess,
    TResult? Function(ChecklistFailure failure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Checklist> checklists)? loadSuccess,
    TResult Function(ChecklistFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadInSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadInProgress value)? loadInProgress,
    TResult? Function(LoadInSuccess value)? loadSuccess,
    TResult? Function(LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadInSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class LoadInProgress implements ChecklistWatcherState {
  const factory LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$LoadInSuccessImplCopyWith<$Res> {
  factory _$$LoadInSuccessImplCopyWith(
          _$LoadInSuccessImpl value, $Res Function(_$LoadInSuccessImpl) then) =
      __$$LoadInSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Checklist> checklists});
}

/// @nodoc
class __$$LoadInSuccessImplCopyWithImpl<$Res>
    extends _$ChecklistWatcherStateCopyWithImpl<$Res, _$LoadInSuccessImpl>
    implements _$$LoadInSuccessImplCopyWith<$Res> {
  __$$LoadInSuccessImplCopyWithImpl(
      _$LoadInSuccessImpl _value, $Res Function(_$LoadInSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checklists = null,
  }) {
    return _then(_$LoadInSuccessImpl(
      null == checklists
          ? _value._checklists
          : checklists // ignore: cast_nullable_to_non_nullable
              as List<Checklist>,
    ));
  }
}

/// @nodoc

class _$LoadInSuccessImpl implements LoadInSuccess {
  const _$LoadInSuccessImpl(final List<Checklist> checklists)
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
    return 'ChecklistWatcherState.loadSuccess(checklists: $checklists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadInSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._checklists, _checklists));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_checklists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadInSuccessImplCopyWith<_$LoadInSuccessImpl> get copyWith =>
      __$$LoadInSuccessImplCopyWithImpl<_$LoadInSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Checklist> checklists) loadSuccess,
    required TResult Function(ChecklistFailure failure) loadFailure,
  }) {
    return loadSuccess(checklists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Checklist> checklists)? loadSuccess,
    TResult? Function(ChecklistFailure failure)? loadFailure,
  }) {
    return loadSuccess?.call(checklists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Checklist> checklists)? loadSuccess,
    TResult Function(ChecklistFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(checklists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadInSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadInProgress value)? loadInProgress,
    TResult? Function(LoadInSuccess value)? loadSuccess,
    TResult? Function(LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadInSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadInSuccess implements ChecklistWatcherState {
  const factory LoadInSuccess(final List<Checklist> checklists) =
      _$LoadInSuccessImpl;

  List<Checklist> get checklists;
  @JsonKey(ignore: true)
  _$$LoadInSuccessImplCopyWith<_$LoadInSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailureImplCopyWith<$Res> {
  factory _$$LoadFailureImplCopyWith(
          _$LoadFailureImpl value, $Res Function(_$LoadFailureImpl) then) =
      __$$LoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChecklistFailure failure});

  $ChecklistFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<$Res>
    extends _$ChecklistWatcherStateCopyWithImpl<$Res, _$LoadFailureImpl>
    implements _$$LoadFailureImplCopyWith<$Res> {
  __$$LoadFailureImplCopyWithImpl(
      _$LoadFailureImpl _value, $Res Function(_$LoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$LoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ChecklistFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ChecklistFailureCopyWith<$Res> get failure {
    return $ChecklistFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$LoadFailureImpl implements LoadFailure {
  const _$LoadFailureImpl(this.failure);

  @override
  final ChecklistFailure failure;

  @override
  String toString() {
    return 'ChecklistWatcherState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      __$$LoadFailureImplCopyWithImpl<_$LoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Checklist> checklists) loadSuccess,
    required TResult Function(ChecklistFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Checklist> checklists)? loadSuccess,
    TResult? Function(ChecklistFailure failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Checklist> checklists)? loadSuccess,
    TResult Function(ChecklistFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadInSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoadInProgress value)? loadInProgress,
    TResult? Function(LoadInSuccess value)? loadSuccess,
    TResult? Function(LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadInSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements ChecklistWatcherState {
  const factory LoadFailure(final ChecklistFailure failure) = _$LoadFailureImpl;

  ChecklistFailure get failure;
  @JsonKey(ignore: true)
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
