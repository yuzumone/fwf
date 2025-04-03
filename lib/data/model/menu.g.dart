// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Menu _$MenuFromJson(Map<String, dynamic> json) => _Menu(
  name: json['name'] as String,
  value: (json['value'] as num).toInt(),
  link: json['link'] as String,
  text: json['text'] as String,
  image: json['image'] as String,
);

Map<String, dynamic> _$MenuToJson(_Menu instance) => <String, dynamic>{
  'name': instance.name,
  'value': instance.value,
  'link': instance.link,
  'text': instance.text,
  'image': instance.image,
};
