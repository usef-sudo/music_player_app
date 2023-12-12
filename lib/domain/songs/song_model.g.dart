// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SongModelImpl _$$SongModelImplFromJson(Map<String, dynamic> json) =>
    _$SongModelImpl(
      id: json['id'] as int?,
      title: json['title'] as String?,
      length: (json['length'] as num?)?.toDouble(),
      artist: json['artist'] as String?,
      path: json['path'] as String?,
    );

Map<String, dynamic> _$$SongModelImplToJson(_$SongModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'length': instance.length,
      'artist': instance.artist,
      'path': instance.path,
    };
