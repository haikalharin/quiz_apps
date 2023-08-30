// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginPageState {
  String? get userName => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? userName, String? password, String? error, String? status)
        empty,
    required TResult Function(
            String? userName, String? password, String? error, String? status)
        loading,
    required TResult Function(
            String? userName, String? password, String? error, String? status)
        loaded,
    required TResult Function(
            String? userName, String? password, String? error, String? status)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? userName, String? password, String? error, String? status)?
        empty,
    TResult? Function(
            String? userName, String? password, String? error, String? status)?
        loading,
    TResult? Function(
            String? userName, String? password, String? error, String? status)?
        loaded,
    TResult? Function(
            String? userName, String? password, String? error, String? status)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? userName, String? password, String? error, String? status)?
        empty,
    TResult Function(
            String? userName, String? password, String? error, String? status)?
        loading,
    TResult Function(
            String? userName, String? password, String? error, String? status)?
        loaded,
    TResult Function(
            String? userName, String? password, String? error, String? status)?
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
  $LoginPageStateCopyWith<LoginPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPageStateCopyWith<$Res> {
  factory $LoginPageStateCopyWith(
          LoginPageState value, $Res Function(LoginPageState) then) =
      _$LoginPageStateCopyWithImpl<$Res, LoginPageState>;
  @useResult
  $Res call(
      {String? userName, String? password, String? error, String? status});
}

/// @nodoc
class _$LoginPageStateCopyWithImpl<$Res, $Val extends LoginPageState>
    implements $LoginPageStateCopyWith<$Res> {
  _$LoginPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
    Object? error = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmptyCopyWith<$Res>
    implements $LoginPageStateCopyWith<$Res> {
  factory _$$_EmptyCopyWith(_$_Empty value, $Res Function(_$_Empty) then) =
      __$$_EmptyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userName, String? password, String? error, String? status});
}

/// @nodoc
class __$$_EmptyCopyWithImpl<$Res>
    extends _$LoginPageStateCopyWithImpl<$Res, _$_Empty>
    implements _$$_EmptyCopyWith<$Res> {
  __$$_EmptyCopyWithImpl(_$_Empty _value, $Res Function(_$_Empty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
    Object? error = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_Empty(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty({this.userName, this.password, this.error, this.status});

  @override
  final String? userName;
  @override
  final String? password;
  @override
  final String? error;
  @override
  final String? status;

  @override
  String toString() {
    return 'LoginPageState.empty(userName: $userName, password: $password, error: $error, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Empty &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userName, password, error, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmptyCopyWith<_$_Empty> get copyWith =>
      __$$_EmptyCopyWithImpl<_$_Empty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? userName, String? password, String? error, String? status)
        empty,
    required TResult Function(
            String? userName, String? password, String? error, String? status)
        loading,
    required TResult Function(
            String? userName, String? password, String? error, String? status)
        loaded,
    required TResult Function(
            String? userName, String? password, String? error, String? status)
        failure,
  }) {
    return empty(userName, password, error, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? userName, String? password, String? error, String? status)?
        empty,
    TResult? Function(
            String? userName, String? password, String? error, String? status)?
        loading,
    TResult? Function(
            String? userName, String? password, String? error, String? status)?
        loaded,
    TResult? Function(
            String? userName, String? password, String? error, String? status)?
        failure,
  }) {
    return empty?.call(userName, password, error, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? userName, String? password, String? error, String? status)?
        empty,
    TResult Function(
            String? userName, String? password, String? error, String? status)?
        loading,
    TResult Function(
            String? userName, String? password, String? error, String? status)?
        loaded,
    TResult Function(
            String? userName, String? password, String? error, String? status)?
        failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(userName, password, error, status);
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

abstract class _Empty implements LoginPageState {
  const factory _Empty(
      {final String? userName,
      final String? password,
      final String? error,
      final String? status}) = _$_Empty;

  @override
  String? get userName;
  @override
  String? get password;
  @override
  String? get error;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_EmptyCopyWith<_$_Empty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $LoginPageStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userName, String? password, String? error, String? status});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$LoginPageStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
    Object? error = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_Loading(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({this.userName, this.password, this.error, this.status});

  @override
  final String? userName;
  @override
  final String? password;
  @override
  final String? error;
  @override
  final String? status;

  @override
  String toString() {
    return 'LoginPageState.loading(userName: $userName, password: $password, error: $error, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userName, password, error, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? userName, String? password, String? error, String? status)
        empty,
    required TResult Function(
            String? userName, String? password, String? error, String? status)
        loading,
    required TResult Function(
            String? userName, String? password, String? error, String? status)
        loaded,
    required TResult Function(
            String? userName, String? password, String? error, String? status)
        failure,
  }) {
    return loading(userName, password, error, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? userName, String? password, String? error, String? status)?
        empty,
    TResult? Function(
            String? userName, String? password, String? error, String? status)?
        loading,
    TResult? Function(
            String? userName, String? password, String? error, String? status)?
        loaded,
    TResult? Function(
            String? userName, String? password, String? error, String? status)?
        failure,
  }) {
    return loading?.call(userName, password, error, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? userName, String? password, String? error, String? status)?
        empty,
    TResult Function(
            String? userName, String? password, String? error, String? status)?
        loading,
    TResult Function(
            String? userName, String? password, String? error, String? status)?
        loaded,
    TResult Function(
            String? userName, String? password, String? error, String? status)?
        failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(userName, password, error, status);
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

abstract class _Loading implements LoginPageState {
  const factory _Loading(
      {final String? userName,
      final String? password,
      final String? error,
      final String? status}) = _$_Loading;

  @override
  String? get userName;
  @override
  String? get password;
  @override
  String? get error;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res>
    implements $LoginPageStateCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userName, String? password, String? error, String? status});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$LoginPageStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
    Object? error = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_Loaded(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({this.userName, this.password, this.error, this.status});

  @override
  final String? userName;
  @override
  final String? password;
  @override
  final String? error;
  @override
  final String? status;

  @override
  String toString() {
    return 'LoginPageState.loaded(userName: $userName, password: $password, error: $error, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userName, password, error, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? userName, String? password, String? error, String? status)
        empty,
    required TResult Function(
            String? userName, String? password, String? error, String? status)
        loading,
    required TResult Function(
            String? userName, String? password, String? error, String? status)
        loaded,
    required TResult Function(
            String? userName, String? password, String? error, String? status)
        failure,
  }) {
    return loaded(userName, password, error, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? userName, String? password, String? error, String? status)?
        empty,
    TResult? Function(
            String? userName, String? password, String? error, String? status)?
        loading,
    TResult? Function(
            String? userName, String? password, String? error, String? status)?
        loaded,
    TResult? Function(
            String? userName, String? password, String? error, String? status)?
        failure,
  }) {
    return loaded?.call(userName, password, error, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? userName, String? password, String? error, String? status)?
        empty,
    TResult Function(
            String? userName, String? password, String? error, String? status)?
        loading,
    TResult Function(
            String? userName, String? password, String? error, String? status)?
        loaded,
    TResult Function(
            String? userName, String? password, String? error, String? status)?
        failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(userName, password, error, status);
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

abstract class _Loaded implements LoginPageState {
  const factory _Loaded(
      {final String? userName,
      final String? password,
      final String? error,
      final String? status}) = _$_Loaded;

  @override
  String? get userName;
  @override
  String? get password;
  @override
  String? get error;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res>
    implements $LoginPageStateCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userName, String? password, String? error, String? status});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$LoginPageStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
    Object? error = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_Failure(
      freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(this.userName, this.password, this.error, this.status);

  @override
  final String? userName;
  @override
  final String? password;
  @override
  final String? error;
  @override
  final String? status;

  @override
  String toString() {
    return 'LoginPageState.failure(userName: $userName, password: $password, error: $error, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userName, password, error, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? userName, String? password, String? error, String? status)
        empty,
    required TResult Function(
            String? userName, String? password, String? error, String? status)
        loading,
    required TResult Function(
            String? userName, String? password, String? error, String? status)
        loaded,
    required TResult Function(
            String? userName, String? password, String? error, String? status)
        failure,
  }) {
    return failure(userName, password, error, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? userName, String? password, String? error, String? status)?
        empty,
    TResult? Function(
            String? userName, String? password, String? error, String? status)?
        loading,
    TResult? Function(
            String? userName, String? password, String? error, String? status)?
        loaded,
    TResult? Function(
            String? userName, String? password, String? error, String? status)?
        failure,
  }) {
    return failure?.call(userName, password, error, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? userName, String? password, String? error, String? status)?
        empty,
    TResult Function(
            String? userName, String? password, String? error, String? status)?
        loading,
    TResult Function(
            String? userName, String? password, String? error, String? status)?
        loaded,
    TResult Function(
            String? userName, String? password, String? error, String? status)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(userName, password, error, status);
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

abstract class _Failure implements LoginPageState {
  const factory _Failure(final String? userName, final String? password,
      final String? error, final String? status) = _$_Failure;

  @override
  String? get userName;
  @override
  String? get password;
  @override
  String? get error;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
