// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Event _$EventFromJson(Map<String, dynamic> json) => _Event(
  name: json['name'] as String,
  start: (json['start'] as num).toInt(),
  end: (json['end'] as num).toInt(),
  file: json['file'] as String,
);

Map<String, dynamic> _$EventToJson(_Event instance) => <String, dynamic>{
  'name': instance.name,
  'start': instance.start,
  'end': instance.end,
  'file': instance.file,
};
