import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fwf/data/model/menu.dart';

part 'shop.g.dart';
part 'shop.freezed.dart';

@freezed
sealed class Shop with _$Shop {
  factory Shop({
    required String name,
    required String aria,
    required double lat,
    required double lng,
    required List<Menu> menus,
  }) = _Shop;

  factory Shop.fromJson(Map<String, dynamic> json) => _$ShopFromJson(json);
}
