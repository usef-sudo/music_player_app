// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'position_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PositionModel _$PositionModelFromJson(Map<String, dynamic> json) {
  return _PositionModel.fromJson(json);
}

/// @nodoc
mixin _$PositionModel {
  Duration? get position => throw _privateConstructorUsedError;
  Duration? get bufferedPosition => throw _privateConstructorUsedError;
  Duration? get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PositionModelCopyWith<PositionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionModelCopyWith<$Res> {
  factory $PositionModelCopyWith(
          PositionModel value, $Res Function(PositionModel) then) =
      _$PositionModelCopyWithImpl<$Res, PositionModel>;
  @useResult
  $Res call(
      {Duration? position, Duration? bufferedPosition, Duration? duration});
}

/// @nodoc
class _$PositionModelCopyWithImpl<$Res, $Val extends PositionModel>
    implements $PositionModelCopyWith<$Res> {
  _$PositionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
    Object? bufferedPosition = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration?,
      bufferedPosition: freezed == bufferedPosition
          ? _value.bufferedPosition
          : bufferedPosition // ignore: cast_nullable_to_non_nullable
              as Duration?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PositionModelImplCopyWith<$Res>
    implements $PositionModelCopyWith<$Res> {
  factory _$$PositionModelImplCopyWith(
          _$PositionModelImpl value, $Res Function(_$PositionModelImpl) then) =
      __$$PositionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Duration? position, Duration? bufferedPosition, Duration? duration});
}

/// @nodoc
class __$$PositionModelImplCopyWithImpl<$Res>
    extends _$PositionModelCopyWithImpl<$Res, _$PositionModelImpl>
    implements _$$PositionModelImplCopyWith<$Res> {
  __$$PositionModelImplCopyWithImpl(
      _$PositionModelImpl _value, $Res Function(_$PositionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
    Object? bufferedPosition = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$PositionModelImpl(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration?,
      bufferedPosition: freezed == bufferedPosition
          ? _value.bufferedPosition
          : bufferedPosition // ignore: cast_nullable_to_non_nullable
              as Duration?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PositionModelImpl implements _PositionModel {
  const _$PositionModelImpl(
      {this.position, this.bufferedPosition, this.duration});

  factory _$PositionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PositionModelImplFromJson(json);

  @override
  final Duration? position;
  @override
  final Duration? bufferedPosition;
  @override
  final Duration? duration;

  @override
  String toString() {
    return 'PositionModel(position: $position, bufferedPosition: $bufferedPosition, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionModelImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.bufferedPosition, bufferedPosition) ||
                other.bufferedPosition == bufferedPosition) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, position, bufferedPosition, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionModelImplCopyWith<_$PositionModelImpl> get copyWith =>
      __$$PositionModelImplCopyWithImpl<_$PositionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PositionModelImplToJson(
      this,
    );
  }
}

abstract class _PositionModel implements PositionModel {
  const factory _PositionModel(
      {final Duration? position,
      final Duration? bufferedPosition,
      final Duration? duration}) = _$PositionModelImpl;

  factory _PositionModel.fromJson(Map<String, dynamic> json) =
      _$PositionModelImpl.fromJson;

  @override
  Duration? get position;
  @override
  Duration? get bufferedPosition;
  @override
  Duration? get duration;
  @override
  @JsonKey(ignore: true)
  _$$PositionModelImplCopyWith<_$PositionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
