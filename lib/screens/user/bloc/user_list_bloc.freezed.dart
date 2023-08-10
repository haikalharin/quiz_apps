// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserListBloc {
  List<User>? get data => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  UserStatus? get status => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        empty,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        loading,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        loaded,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        empty,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loading,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loaded,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        empty,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loading,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loaded,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserListBlocCopyWith<UserListBloc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListBlocCopyWith<$Res> {
  factory $UserListBlocCopyWith(
          UserListBloc value, $Res Function(UserListBloc) then) =
      _$UserListBlocCopyWithImpl<$Res, UserListBloc>;
  @useResult
  $Res call(
      {List<User>? data, Gender? gender, UserStatus? status, String? error});
}

/// @nodoc
class _$UserListBlocCopyWithImpl<$Res, $Val extends UserListBloc>
    implements $UserListBlocCopyWith<$Res> {
  _$UserListBlocCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? gender = freezed,
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmptyCopyWith<$Res> implements $UserListBlocCopyWith<$Res> {
  factory _$$_EmptyCopyWith(_$_Empty value, $Res Function(_$_Empty) then) =
      __$$_EmptyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<User>? data, Gender? gender, UserStatus? status, String? error});
}

/// @nodoc
class __$$_EmptyCopyWithImpl<$Res>
    extends _$UserListBlocCopyWithImpl<$Res, _$_Empty>
    implements _$$_EmptyCopyWith<$Res> {
  __$$_EmptyCopyWithImpl(_$_Empty _value, $Res Function(_$_Empty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? gender = freezed,
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_Empty(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty({final List<User>? data, this.gender, this.status, this.error})
      : _data = data;

  final List<User>? _data;
  @override
  List<User>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Gender? gender;
  @override
  final UserStatus? status;
  @override
  final String? error;

  @override
  String toString() {
    return 'UserListBloc.empty(data: $data, gender: $gender, status: $status, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Empty &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), gender, status, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmptyCopyWith<_$_Empty> get copyWith =>
      __$$_EmptyCopyWithImpl<_$_Empty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        empty,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        loading,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        loaded,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        failure,
  }) {
    return empty(data, gender, status, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        empty,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loading,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loaded,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        failure,
  }) {
    return empty?.call(data, gender, status, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        empty,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loading,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loaded,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(data, gender, status, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements UserListBloc {
  const factory _Empty(
      {final List<User>? data,
      final Gender? gender,
      final UserStatus? status,
      final String? error}) = _$_Empty;

  @override
  List<User>? get data;
  @override
  Gender? get gender;
  @override
  UserStatus? get status;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_EmptyCopyWith<_$_Empty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $UserListBlocCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<User>? data, Gender? gender, UserStatus? status, String? error});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$UserListBlocCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? gender = freezed,
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_Loading(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading(
      {final List<User>? data, this.gender, this.status, this.error})
      : _data = data;

  final List<User>? _data;
  @override
  List<User>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Gender? gender;
  @override
  final UserStatus? status;
  @override
  final String? error;

  @override
  String toString() {
    return 'UserListBloc.loading(data: $data, gender: $gender, status: $status, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), gender, status, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        empty,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        loading,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        loaded,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        failure,
  }) {
    return loading(data, gender, status, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        empty,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loading,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loaded,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        failure,
  }) {
    return loading?.call(data, gender, status, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        empty,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loading,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loaded,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data, gender, status, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UserListBloc {
  const factory _Loading(
      {final List<User>? data,
      final Gender? gender,
      final UserStatus? status,
      final String? error}) = _$_Loading;

  @override
  List<User>? get data;
  @override
  Gender? get gender;
  @override
  UserStatus? get status;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> implements $UserListBlocCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<User>? data, Gender? gender, UserStatus? status, String? error});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$UserListBlocCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? gender = freezed,
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_Loaded(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {final List<User>? data, this.gender, this.status, this.error})
      : _data = data;

  final List<User>? _data;
  @override
  List<User>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Gender? gender;
  @override
  final UserStatus? status;
  @override
  final String? error;

  @override
  String toString() {
    return 'UserListBloc.loaded(data: $data, gender: $gender, status: $status, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), gender, status, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        empty,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        loading,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        loaded,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        failure,
  }) {
    return loaded(data, gender, status, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        empty,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loading,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loaded,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        failure,
  }) {
    return loaded?.call(data, gender, status, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        empty,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loading,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loaded,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data, gender, status, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements UserListBloc {
  const factory _Loaded(
      {final List<User>? data,
      final Gender? gender,
      final UserStatus? status,
      final String? error}) = _$_Loaded;

  @override
  List<User>? get data;
  @override
  Gender? get gender;
  @override
  UserStatus? get status;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res>
    implements $UserListBlocCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<User>? data, Gender? gender, UserStatus? status, String? error});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$UserListBlocCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? gender = freezed,
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_Failure(
      freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus?,
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(final List<User>? data, this.gender, this.status, this.error)
      : _data = data;

  final List<User>? _data;
  @override
  List<User>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Gender? gender;
  @override
  final UserStatus? status;
  @override
  final String? error;

  @override
  String toString() {
    return 'UserListBloc.failure(data: $data, gender: $gender, status: $status, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), gender, status, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        empty,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        loading,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        loaded,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        failure,
  }) {
    return failure(data, gender, status, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        empty,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loading,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loaded,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        failure,
  }) {
    return failure?.call(data, gender, status, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        empty,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loading,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loaded,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(data, gender, status, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements UserListBloc {
  const factory _Failure(final List<User>? data, final Gender? gender,
      final UserStatus? status, final String? error) = _$_Failure;

  @override
  List<User>? get data;
  @override
  Gender? get gender;
  @override
  UserStatus? get status;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
