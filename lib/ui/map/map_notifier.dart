import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'map_notifier.g.dart';
part 'map_notifier.freezed.dart';

@freezed
abstract class MapState with _$MapState {
  const factory MapState({
    MapController? controller,
    @Default(AsyncValue<String>.loading()) AsyncValue<String> databasePath,
  }) = _MapState;
}

@Riverpod(keepAlive: true)
class MapNotifier extends _$MapNotifier {
  @override
  MapState build() {
    init();
    return MapState(
      controller: MapController(),
    );
  }

  void init() async {
    final cacheDirectory = await getTemporaryDirectory();
    state = state.copyWith(
      databasePath: AsyncValue.data(cacheDirectory.path),
    );
  }
}
