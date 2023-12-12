// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PositionModelImpl _$$PositionModelImplFromJson(Map<String, dynamic> json) =>
    _$PositionModelImpl(
      position: json['position'] == null
          ? null
          : Duration(microseconds: json['position'] as int),
      bufferedPosition: json['bufferedPosition'] == null
          ? null
          : Duration(microseconds: json['bufferedPosition'] as int),
      duration: json['duration'] == null
          ? null
          : Duration(microseconds: json['duration'] as int),
    );

Map<String, dynamic> _$$PositionModelImplToJson(_$PositionModelImpl instance) =>
    <String, dynamic>{
      'position': instance.position?.inMicroseconds,
      'bufferedPosition': instance.bufferedPosition?.inMicroseconds,
      'duration': instance.duration?.inMicroseconds,
    };
