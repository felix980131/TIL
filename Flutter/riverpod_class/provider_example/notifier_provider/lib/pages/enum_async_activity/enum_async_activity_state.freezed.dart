// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enum_async_activity_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EnumAsyncActivityState {
  ActivityStatus get status => throw _privateConstructorUsedError;
  Activity get acticity => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EnumAsyncActivityStateCopyWith<EnumAsyncActivityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnumAsyncActivityStateCopyWith<$Res> {
  factory $EnumAsyncActivityStateCopyWith(EnumAsyncActivityState value,
          $Res Function(EnumAsyncActivityState) then) =
      _$EnumAsyncActivityStateCopyWithImpl<$Res, EnumAsyncActivityState>;
  @useResult
  $Res call({ActivityStatus status, Activity acticity, String error});

  $ActivityCopyWith<$Res> get acticity;
}

/// @nodoc
class _$EnumAsyncActivityStateCopyWithImpl<$Res,
        $Val extends EnumAsyncActivityState>
    implements $EnumAsyncActivityStateCopyWith<$Res> {
  _$EnumAsyncActivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? acticity = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActivityStatus,
      acticity: null == acticity
          ? _value.acticity
          : acticity // ignore: cast_nullable_to_non_nullable
              as Activity,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ActivityCopyWith<$Res> get acticity {
    return $ActivityCopyWith<$Res>(_value.acticity, (value) {
      return _then(_value.copyWith(acticity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EnumAsyncActivityStateImplCopyWith<$Res>
    implements $EnumAsyncActivityStateCopyWith<$Res> {
  factory _$$EnumAsyncActivityStateImplCopyWith(
          _$EnumAsyncActivityStateImpl value,
          $Res Function(_$EnumAsyncActivityStateImpl) then) =
      __$$EnumAsyncActivityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ActivityStatus status, Activity acticity, String error});

  @override
  $ActivityCopyWith<$Res> get acticity;
}

/// @nodoc
class __$$EnumAsyncActivityStateImplCopyWithImpl<$Res>
    extends _$EnumAsyncActivityStateCopyWithImpl<$Res,
        _$EnumAsyncActivityStateImpl>
    implements _$$EnumAsyncActivityStateImplCopyWith<$Res> {
  __$$EnumAsyncActivityStateImplCopyWithImpl(
      _$EnumAsyncActivityStateImpl _value,
      $Res Function(_$EnumAsyncActivityStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? acticity = null,
    Object? error = null,
  }) {
    return _then(_$EnumAsyncActivityStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActivityStatus,
      acticity: null == acticity
          ? _value.acticity
          : acticity // ignore: cast_nullable_to_non_nullable
              as Activity,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EnumAsyncActivityStateImpl
    with DiagnosticableTreeMixin
    implements _EnumAsyncActivityState {
  const _$EnumAsyncActivityStateImpl(
      {required this.status, required this.acticity, required this.error});

  @override
  final ActivityStatus status;
  @override
  final Activity acticity;
  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EnumAsyncActivityState(status: $status, acticity: $acticity, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EnumAsyncActivityState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('acticity', acticity))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnumAsyncActivityStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.acticity, acticity) ||
                other.acticity == acticity) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, acticity, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnumAsyncActivityStateImplCopyWith<_$EnumAsyncActivityStateImpl>
      get copyWith => __$$EnumAsyncActivityStateImplCopyWithImpl<
          _$EnumAsyncActivityStateImpl>(this, _$identity);
}

abstract class _EnumAsyncActivityState implements EnumAsyncActivityState {
  const factory _EnumAsyncActivityState(
      {required final ActivityStatus status,
      required final Activity acticity,
      required final String error}) = _$EnumAsyncActivityStateImpl;

  @override
  ActivityStatus get status;
  @override
  Activity get acticity;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$EnumAsyncActivityStateImplCopyWith<_$EnumAsyncActivityStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
