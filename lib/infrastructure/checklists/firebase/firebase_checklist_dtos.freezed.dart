// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_checklist_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FirebaseChecklistDto _$FirebaseChecklistDtoFromJson(Map<String, dynamic> json) {
  return _ChecklistDto.fromJson(json);
}

/// @nodoc
mixin _$FirebaseChecklistDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  List<ItemDto> get items => throw _privateConstructorUsedError;
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirebaseChecklistDtoCopyWith<FirebaseChecklistDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseChecklistDtoCopyWith<$Res> {
  factory $FirebaseChecklistDtoCopyWith(FirebaseChecklistDto value,
          $Res Function(FirebaseChecklistDto) then) =
      _$FirebaseChecklistDtoCopyWithImpl<$Res, FirebaseChecklistDto>;
  @useResult
  $Res call(
      {String id,
      String name,
      String color,
      List<ItemDto> items,
      @ServerTimeStampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$FirebaseChecklistDtoCopyWithImpl<$Res,
        $Val extends FirebaseChecklistDto>
    implements $FirebaseChecklistDtoCopyWith<$Res> {
  _$FirebaseChecklistDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
    Object? items = null,
    Object? serverTimeStamp = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemDto>,
      serverTimeStamp: null == serverTimeStamp
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChecklistDtoImplCopyWith<$Res>
    implements $FirebaseChecklistDtoCopyWith<$Res> {
  factory _$$ChecklistDtoImplCopyWith(
          _$ChecklistDtoImpl value, $Res Function(_$ChecklistDtoImpl) then) =
      __$$ChecklistDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String color,
      List<ItemDto> items,
      @ServerTimeStampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$$ChecklistDtoImplCopyWithImpl<$Res>
    extends _$FirebaseChecklistDtoCopyWithImpl<$Res, _$ChecklistDtoImpl>
    implements _$$ChecklistDtoImplCopyWith<$Res> {
  __$$ChecklistDtoImplCopyWithImpl(
      _$ChecklistDtoImpl _value, $Res Function(_$ChecklistDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
    Object? items = null,
    Object? serverTimeStamp = null,
  }) {
    return _then(_$ChecklistDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemDto>,
      serverTimeStamp: null == serverTimeStamp
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChecklistDtoImpl extends _ChecklistDto {
  const _$ChecklistDtoImpl(
      {required this.id,
      required this.name,
      required this.color,
      required final List<ItemDto> items,
      @ServerTimeStampConverter() required this.serverTimeStamp})
      : _items = items,
        super._();

  factory _$ChecklistDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChecklistDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String color;
  final List<ItemDto> _items;
  @override
  List<ItemDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @ServerTimeStampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'FirebaseChecklistDto(id: $id, name: $name, color: $color, items: $items, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChecklistDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                other.serverTimeStamp == serverTimeStamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, color,
      const DeepCollectionEquality().hash(_items), serverTimeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChecklistDtoImplCopyWith<_$ChecklistDtoImpl> get copyWith =>
      __$$ChecklistDtoImplCopyWithImpl<_$ChecklistDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChecklistDtoImplToJson(
      this,
    );
  }
}

abstract class _ChecklistDto extends FirebaseChecklistDto {
  const factory _ChecklistDto(
      {required final String id,
      required final String name,
      required final String color,
      required final List<ItemDto> items,
      @ServerTimeStampConverter()
      required final FieldValue serverTimeStamp}) = _$ChecklistDtoImpl;
  const _ChecklistDto._() : super._();

  factory _ChecklistDto.fromJson(Map<String, dynamic> json) =
      _$ChecklistDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get color;
  @override
  List<ItemDto> get items;
  @override
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$$ChecklistDtoImplCopyWith<_$ChecklistDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemDto _$ItemDtoFromJson(Map<String, dynamic> json) {
  return _ItemDto.fromJson(json);
}

/// @nodoc
mixin _$ItemDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemDtoCopyWith<ItemDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDtoCopyWith<$Res> {
  factory $ItemDtoCopyWith(ItemDto value, $Res Function(ItemDto) then) =
      _$ItemDtoCopyWithImpl<$Res, ItemDto>;
  @useResult
  $Res call({String id, String name, bool done});
}

/// @nodoc
class _$ItemDtoCopyWithImpl<$Res, $Val extends ItemDto>
    implements $ItemDtoCopyWith<$Res> {
  _$ItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? done = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemDtoImplCopyWith<$Res> implements $ItemDtoCopyWith<$Res> {
  factory _$$ItemDtoImplCopyWith(
          _$ItemDtoImpl value, $Res Function(_$ItemDtoImpl) then) =
      __$$ItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, bool done});
}

/// @nodoc
class __$$ItemDtoImplCopyWithImpl<$Res>
    extends _$ItemDtoCopyWithImpl<$Res, _$ItemDtoImpl>
    implements _$$ItemDtoImplCopyWith<$Res> {
  __$$ItemDtoImplCopyWithImpl(
      _$ItemDtoImpl _value, $Res Function(_$ItemDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? done = null,
  }) {
    return _then(_$ItemDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemDtoImpl extends _ItemDto {
  const _$ItemDtoImpl(
      {required this.id, required this.name, required this.done})
      : super._();

  factory _$ItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final bool done;

  @override
  String toString() {
    return 'ItemDto(id: $id, name: $name, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.done, done) || other.done == done));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, done);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemDtoImplCopyWith<_$ItemDtoImpl> get copyWith =>
      __$$ItemDtoImplCopyWithImpl<_$ItemDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemDtoImplToJson(
      this,
    );
  }
}

abstract class _ItemDto extends ItemDto {
  const factory _ItemDto(
      {required final String id,
      required final String name,
      required final bool done}) = _$ItemDtoImpl;
  const _ItemDto._() : super._();

  factory _ItemDto.fromJson(Map<String, dynamic> json) = _$ItemDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  bool get done;
  @override
  @JsonKey(ignore: true)
  _$$ItemDtoImplCopyWith<_$ItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
