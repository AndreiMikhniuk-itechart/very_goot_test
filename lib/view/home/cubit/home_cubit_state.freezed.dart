// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_cubit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeCubitStateTearOff {
  const _$HomeCubitStateTearOff();

  _HomeCubitState call(int currentIndex) {
    return _HomeCubitState(
      currentIndex,
    );
  }
}

/// @nodoc
const $HomeCubitState = _$HomeCubitStateTearOff();

/// @nodoc
mixin _$HomeCubitState {
  int get currentIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeCubitStateCopyWith<HomeCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeCubitStateCopyWith<$Res> {
  factory $HomeCubitStateCopyWith(
          HomeCubitState value, $Res Function(HomeCubitState) then) =
      _$HomeCubitStateCopyWithImpl<$Res>;
  $Res call({int currentIndex});
}

/// @nodoc
class _$HomeCubitStateCopyWithImpl<$Res>
    implements $HomeCubitStateCopyWith<$Res> {
  _$HomeCubitStateCopyWithImpl(this._value, this._then);

  final HomeCubitState _value;
  // ignore: unused_field
  final $Res Function(HomeCubitState) _then;

  @override
  $Res call({
    Object? currentIndex = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$HomeCubitStateCopyWith<$Res>
    implements $HomeCubitStateCopyWith<$Res> {
  factory _$HomeCubitStateCopyWith(
          _HomeCubitState value, $Res Function(_HomeCubitState) then) =
      __$HomeCubitStateCopyWithImpl<$Res>;
  @override
  $Res call({int currentIndex});
}

/// @nodoc
class __$HomeCubitStateCopyWithImpl<$Res>
    extends _$HomeCubitStateCopyWithImpl<$Res>
    implements _$HomeCubitStateCopyWith<$Res> {
  __$HomeCubitStateCopyWithImpl(
      _HomeCubitState _value, $Res Function(_HomeCubitState) _then)
      : super(_value, (v) => _then(v as _HomeCubitState));

  @override
  _HomeCubitState get _value => super._value as _HomeCubitState;

  @override
  $Res call({
    Object? currentIndex = freezed,
  }) {
    return _then(_HomeCubitState(
      currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HomeCubitState implements _HomeCubitState {
  _$_HomeCubitState(this.currentIndex);

  @override
  final int currentIndex;

  @override
  String toString() {
    return 'HomeCubitState(currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeCubitState &&
            (identical(other.currentIndex, currentIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentIndex, currentIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentIndex);

  @JsonKey(ignore: true)
  @override
  _$HomeCubitStateCopyWith<_HomeCubitState> get copyWith =>
      __$HomeCubitStateCopyWithImpl<_HomeCubitState>(this, _$identity);
}

abstract class _HomeCubitState implements HomeCubitState {
  factory _HomeCubitState(int currentIndex) = _$_HomeCubitState;

  @override
  int get currentIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeCubitStateCopyWith<_HomeCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}
