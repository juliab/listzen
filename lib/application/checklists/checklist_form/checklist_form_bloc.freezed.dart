// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChecklistFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Checklist> initialChecklistOption)
        initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(List<ItemPrimitive> items) itemsChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult? Function(String name)? nameChanged,
    TResult? Function(List<ItemPrimitive> items)? itemsChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(List<ItemPrimitive> items)? itemsChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(ItemsChanged value) itemsChanged,
    required TResult Function(Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(ItemsChanged value)? itemsChanged,
    TResult? Function(Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ItemsChanged value)? itemsChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChecklistFormEventCopyWith<$Res> {
  factory $ChecklistFormEventCopyWith(
          ChecklistFormEvent value, $Res Function(ChecklistFormEvent) then) =
      _$ChecklistFormEventCopyWithImpl<$Res, ChecklistFormEvent>;
}

/// @nodoc
class _$ChecklistFormEventCopyWithImpl<$Res, $Val extends ChecklistFormEvent>
    implements $ChecklistFormEventCopyWith<$Res> {
  _$ChecklistFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializedCopyWith<$Res> {
  factory _$$InitializedCopyWith(
          _$Initialized value, $Res Function(_$Initialized) then) =
      __$$InitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<Checklist> initialChecklistOption});
}

/// @nodoc
class __$$InitializedCopyWithImpl<$Res>
    extends _$ChecklistFormEventCopyWithImpl<$Res, _$Initialized>
    implements _$$InitializedCopyWith<$Res> {
  __$$InitializedCopyWithImpl(
      _$Initialized _value, $Res Function(_$Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialChecklistOption = null,
  }) {
    return _then(_$Initialized(
      null == initialChecklistOption
          ? _value.initialChecklistOption
          : initialChecklistOption // ignore: cast_nullable_to_non_nullable
              as Option<Checklist>,
    ));
  }
}

/// @nodoc

class _$Initialized implements Initialized {
  const _$Initialized(this.initialChecklistOption);

  @override
  final Option<Checklist> initialChecklistOption;

  @override
  String toString() {
    return 'ChecklistFormEvent.initialized(initialChecklistOption: $initialChecklistOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initialized &&
            (identical(other.initialChecklistOption, initialChecklistOption) ||
                other.initialChecklistOption == initialChecklistOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialChecklistOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedCopyWith<_$Initialized> get copyWith =>
      __$$InitializedCopyWithImpl<_$Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Checklist> initialChecklistOption)
        initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(List<ItemPrimitive> items) itemsChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialChecklistOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult? Function(String name)? nameChanged,
    TResult? Function(List<ItemPrimitive> items)? itemsChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(initialChecklistOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(List<ItemPrimitive> items)? itemsChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialChecklistOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(ItemsChanged value) itemsChanged,
    required TResult Function(Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(ItemsChanged value)? itemsChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ItemsChanged value)? itemsChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements ChecklistFormEvent {
  const factory Initialized(final Option<Checklist> initialChecklistOption) =
      _$Initialized;

  Option<Checklist> get initialChecklistOption;
  @JsonKey(ignore: true)
  _$$InitializedCopyWith<_$Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameChangedCopyWith<$Res> {
  factory _$$NameChangedCopyWith(
          _$NameChanged value, $Res Function(_$NameChanged) then) =
      __$$NameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NameChangedCopyWithImpl<$Res>
    extends _$ChecklistFormEventCopyWithImpl<$Res, _$NameChanged>
    implements _$$NameChangedCopyWith<$Res> {
  __$$NameChangedCopyWithImpl(
      _$NameChanged _value, $Res Function(_$NameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$NameChanged(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChanged implements NameChanged {
  const _$NameChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'ChecklistFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChanged &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedCopyWith<_$NameChanged> get copyWith =>
      __$$NameChangedCopyWithImpl<_$NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Checklist> initialChecklistOption)
        initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(List<ItemPrimitive> items) itemsChanged,
    required TResult Function() saved,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult? Function(String name)? nameChanged,
    TResult? Function(List<ItemPrimitive> items)? itemsChanged,
    TResult? Function()? saved,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(List<ItemPrimitive> items)? itemsChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(ItemsChanged value) itemsChanged,
    required TResult Function(Saved value) saved,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(ItemsChanged value)? itemsChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ItemsChanged value)? itemsChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements ChecklistFormEvent {
  const factory NameChanged(final String name) = _$NameChanged;

  String get name;
  @JsonKey(ignore: true)
  _$$NameChangedCopyWith<_$NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemsChangedCopyWith<$Res> {
  factory _$$ItemsChangedCopyWith(
          _$ItemsChanged value, $Res Function(_$ItemsChanged) then) =
      __$$ItemsChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ItemPrimitive> items});
}

/// @nodoc
class __$$ItemsChangedCopyWithImpl<$Res>
    extends _$ChecklistFormEventCopyWithImpl<$Res, _$ItemsChanged>
    implements _$$ItemsChangedCopyWith<$Res> {
  __$$ItemsChangedCopyWithImpl(
      _$ItemsChanged _value, $Res Function(_$ItemsChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$ItemsChanged(
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemPrimitive>,
    ));
  }
}

/// @nodoc

class _$ItemsChanged implements ItemsChanged {
  const _$ItemsChanged(final List<ItemPrimitive> items) : _items = items;

  final List<ItemPrimitive> _items;
  @override
  List<ItemPrimitive> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ChecklistFormEvent.itemsChanged(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsChanged &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsChangedCopyWith<_$ItemsChanged> get copyWith =>
      __$$ItemsChangedCopyWithImpl<_$ItemsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Checklist> initialChecklistOption)
        initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(List<ItemPrimitive> items) itemsChanged,
    required TResult Function() saved,
  }) {
    return itemsChanged(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult? Function(String name)? nameChanged,
    TResult? Function(List<ItemPrimitive> items)? itemsChanged,
    TResult? Function()? saved,
  }) {
    return itemsChanged?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(List<ItemPrimitive> items)? itemsChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (itemsChanged != null) {
      return itemsChanged(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(ItemsChanged value) itemsChanged,
    required TResult Function(Saved value) saved,
  }) {
    return itemsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(ItemsChanged value)? itemsChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return itemsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ItemsChanged value)? itemsChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (itemsChanged != null) {
      return itemsChanged(this);
    }
    return orElse();
  }
}

abstract class ItemsChanged implements ChecklistFormEvent {
  const factory ItemsChanged(final List<ItemPrimitive> items) = _$ItemsChanged;

  List<ItemPrimitive> get items;
  @JsonKey(ignore: true)
  _$$ItemsChangedCopyWith<_$ItemsChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedCopyWith<$Res> {
  factory _$$SavedCopyWith(_$Saved value, $Res Function(_$Saved) then) =
      __$$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedCopyWithImpl<$Res>
    extends _$ChecklistFormEventCopyWithImpl<$Res, _$Saved>
    implements _$$SavedCopyWith<$Res> {
  __$$SavedCopyWithImpl(_$Saved _value, $Res Function(_$Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Saved implements Saved {
  const _$Saved();

  @override
  String toString() {
    return 'ChecklistFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Checklist> initialChecklistOption)
        initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(List<ItemPrimitive> items) itemsChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult? Function(String name)? nameChanged,
    TResult? Function(List<ItemPrimitive> items)? itemsChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Checklist> initialChecklistOption)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(List<ItemPrimitive> items)? itemsChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(ItemsChanged value) itemsChanged,
    required TResult Function(Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(ItemsChanged value)? itemsChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ItemsChanged value)? itemsChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class Saved implements ChecklistFormEvent {
  const factory Saved() = _$Saved;
}

/// @nodoc
mixin _$ChecklistFormState {
  Checklist get checklist => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<ChecklistFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChecklistFormStateCopyWith<ChecklistFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChecklistFormStateCopyWith<$Res> {
  factory $ChecklistFormStateCopyWith(
          ChecklistFormState value, $Res Function(ChecklistFormState) then) =
      _$ChecklistFormStateCopyWithImpl<$Res, ChecklistFormState>;
  @useResult
  $Res call(
      {Checklist checklist,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<ChecklistFailure, Unit>> saveFailureOrSuccessOption});

  $ChecklistCopyWith<$Res> get checklist;
}

/// @nodoc
class _$ChecklistFormStateCopyWithImpl<$Res, $Val extends ChecklistFormState>
    implements $ChecklistFormStateCopyWith<$Res> {
  _$ChecklistFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checklist = null,
    Object? showErrorMessages = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      checklist: null == checklist
          ? _value.checklist
          : checklist // ignore: cast_nullable_to_non_nullable
              as Checklist,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ChecklistFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChecklistCopyWith<$Res> get checklist {
    return $ChecklistCopyWith<$Res>(_value.checklist, (value) {
      return _then(_value.copyWith(checklist: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChecklistFormStateCopyWith<$Res>
    implements $ChecklistFormStateCopyWith<$Res> {
  factory _$$_ChecklistFormStateCopyWith(_$_ChecklistFormState value,
          $Res Function(_$_ChecklistFormState) then) =
      __$$_ChecklistFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Checklist checklist,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<ChecklistFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $ChecklistCopyWith<$Res> get checklist;
}

/// @nodoc
class __$$_ChecklistFormStateCopyWithImpl<$Res>
    extends _$ChecklistFormStateCopyWithImpl<$Res, _$_ChecklistFormState>
    implements _$$_ChecklistFormStateCopyWith<$Res> {
  __$$_ChecklistFormStateCopyWithImpl(
      _$_ChecklistFormState _value, $Res Function(_$_ChecklistFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checklist = null,
    Object? showErrorMessages = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$_ChecklistFormState(
      checklist: null == checklist
          ? _value.checklist
          : checklist // ignore: cast_nullable_to_non_nullable
              as Checklist,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ChecklistFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ChecklistFormState implements _ChecklistFormState {
  const _$_ChecklistFormState(
      {required this.checklist,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final Checklist checklist;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<ChecklistFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ChecklistFormState(checklist: $checklist, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChecklistFormState &&
            (identical(other.checklist, checklist) ||
                other.checklist == checklist) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                other.saveFailureOrSuccessOption ==
                    saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, checklist, showErrorMessages,
      isEditing, isSaving, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChecklistFormStateCopyWith<_$_ChecklistFormState> get copyWith =>
      __$$_ChecklistFormStateCopyWithImpl<_$_ChecklistFormState>(
          this, _$identity);
}

abstract class _ChecklistFormState implements ChecklistFormState {
  const factory _ChecklistFormState(
      {required final Checklist checklist,
      required final bool showErrorMessages,
      required final bool isEditing,
      required final bool isSaving,
      required final Option<Either<ChecklistFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_ChecklistFormState;

  @override
  Checklist get checklist;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<ChecklistFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_ChecklistFormStateCopyWith<_$_ChecklistFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
