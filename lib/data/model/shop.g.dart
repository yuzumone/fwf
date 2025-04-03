// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Shop _$ShopFromJson(Map<String, dynamic> json) => _Shop(
  name: json['name'] as String,
  menus:
      (json['menus'] as List<dynamic>)
          .map((e) => Menu.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$ShopToJson(_Shop instance) => <String, dynamic>{
  'name': instance.name,
  'menus': instance.menus,
};
