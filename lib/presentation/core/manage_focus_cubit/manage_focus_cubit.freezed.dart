// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manage_focus_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ManageFocusState {
  List<FocusNode> get nodes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ManageFocusStateCopyWith<ManageFocusState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageFocusStateCopyWith<$Res> {
  factory $ManageFocusStateCopyWith(
          ManageFocusState value, $Res Function(ManageFocusState) then) =
      _$ManageFocusStateCopyWithImpl<$Res, ManageFocusState>;
  @useResult
  $Res call({List<FocusNode> nodes});
}

/// @nodoc
class _$ManageFocusStateCopyWithImpl<$Res, $Val extends ManageFocusState>
    implements $ManageFocusStateCopyWith<$Res> {
  _$ManageFocusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nodes = null,
  }) {
    return _then(_value.copyWith(
      nodes: null == nodes
          ? _value.nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<FocusNode>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ManageFocusStateImplCopyWith<$Res>
    implements $ManageFocusStateCopyWith<$Res> {
  factory _$$ManageFocusStateImplCopyWith(_$ManageFocusStateImpl value,
          $Res Function(_$ManageFocusStateImpl) then) =
      __$$ManageFocusStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FocusNode> nodes});
}

/// @nodoc
class __$$ManageFocusStateImplCopyWithImpl<$Res>
    extends _$ManageFocusStateCopyWithImpl<$Res, _$ManageFocusStateImpl>
    implements _$$ManageFocusStateImplCopyWith<$Res> {
  __$$ManageFocusStateImplCopyWithImpl(_$ManageFocusStateImpl _value,
      $Res Function(_$ManageFocusStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nodes = null,
  }) {
    return _then(_$ManageFocusStateImpl(
      nodes: null == nodes
          ? _value._nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<FocusNode>,
    ));
  }
}

/// @nodoc

class _$ManageFocusStateImpl implements _ManageFocusState {
  _$ManageFocusStateImpl({required final List<FocusNode> nodes})
      : _nodes = nodes;

  final List<FocusNode> _nodes;
  @override
  List<FocusNode> get nodes {
    if (_nodes is EqualUnmodifiableListView) return _nodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nodes);
  }

  @override
  String toString() {
    return 'ManageFocusState(nodes: $nodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManageFocusStateImpl &&
            const DeepCollectionEquality().equals(other._nodes, _nodes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_nodes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ManageFocusStateImplCopyWith<_$ManageFocusStateImpl> get copyWith =>
      __$$ManageFocusStateImplCopyWithImpl<_$ManageFocusStateImpl>(
          this, _$identity);
}

abstract class _ManageFocusState implements ManageFocusState {
  factory _ManageFocusState({required final List<FocusNode> nodes}) =
      _$ManageFocusStateImpl;

  @override
  List<FocusNode> get nodes;
  @override
  @JsonKey(ignore: true)
  _$$ManageFocusStateImplCopyWith<_$ManageFocusStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
