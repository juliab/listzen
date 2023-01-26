// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CheckList {
  UniqueId get id => throw _privateConstructorUsedError;
  CheckListName get name => throw _privateConstructorUsedError;
  List<Item> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckListCopyWith<CheckList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckListCopyWith<$Res> {
  factory $CheckListCopyWith(CheckList value, $Res Function(CheckList) then) =
      _$CheckListCopyWithImpl<$Res, CheckList>;
  @useResult
  $Res call({UniqueId id, CheckListName name, List<Item> items});
}

/// @nodoc
class _$CheckListCopyWithImpl<$Res, $Val extends CheckList>
    implements $CheckListCopyWith<$Res> {
  _$CheckListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as CheckListName,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CheckListCopyWith<$Res> implements $CheckListCopyWith<$Res> {
  factory _$$_CheckListCopyWith(
          _$_CheckList value, $Res Function(_$_CheckList) then) =
      __$$_CheckListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueId id, CheckListName name, List<Item> items});
}

/// @nodoc
class __$$_CheckListCopyWithImpl<$Res>
    extends _$CheckListCopyWithImpl<$Res, _$_CheckList>
    implements _$$_CheckListCopyWith<$Res> {
  __$$_CheckListCopyWithImpl(
      _$_CheckList _value, $Res Function(_$_CheckList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? items = null,
  }) {
    return _then(_$_CheckList(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as CheckListName,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc

class _$_CheckList extends _CheckList {
  const _$_CheckList(
      {required this.id, required this.name, required final List<Item> items})
      : _items = items,
        super._();

  @override
  final UniqueId id;
  @override
  final CheckListName name;
  final List<Item> _items;
  @override
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'CheckList(id: $id, name: $name, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckList &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckListCopyWith<_$_CheckList> get copyWith =>
      __$$_CheckListCopyWithImpl<_$_CheckList>(this, _$identity);
}

abstract class _CheckList extends CheckList {
  const factory _CheckList(
      {required final UniqueId id,
      required final CheckListName name,
      required final List<Item> items}) = _$_CheckList;
  const _CheckList._() : super._();

  @override
  UniqueId get id;
  @override
  CheckListName get name;
  @override
  List<Item> get items;
  @override
  @JsonKey(ignore: true)
  _$$_CheckListCopyWith<_$_CheckList> get copyWith =>
      throw _privateConstructorUsedError;
}
