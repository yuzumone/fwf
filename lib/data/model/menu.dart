import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu.freezed.dart';
part 'menu.g.dart';

@freezed
sealed class Menu with _$Menu {
  factory Menu({
    required String name,
    required int value,
    required String link,
    required String text,
    required String image,
  }) = _Menu;

  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);
}
