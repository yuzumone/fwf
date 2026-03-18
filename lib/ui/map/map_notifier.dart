import 'package:flutter_map/flutter_map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:vector_map_tiles/vector_map_tiles.dart';

part 'map_notifier.g.dart';
part 'map_notifier.freezed.dart';

@freezed
abstract class MapState with _$MapState {
  const factory MapState({
    MapController? controller,
    @Default(AsyncValue<Style>.loading()) AsyncValue<Style> style,
  }) = _MapState;
}

@Riverpod(keepAlive: true)
class MapNotifier extends _$MapNotifier {
  @override
  MapState build() {
    init();
    return MapState(controller: MapController());
  }

  void init() async {
    final style = await StyleReader(
      uri: 'https://tile.openstreetmap.jp/styles/maptiler-basic-ja/style.json',
      httpHeaders: {'User-Agent': 'net.yuzumone.fwf'},
    ).read();
    state = state.copyWith(style: AsyncValue.data(style));
  }
}
