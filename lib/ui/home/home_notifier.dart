import 'package:fwf/data/model/event.dart';
import 'package:fwf/data/model/shop.dart';
import 'package:fwf/data/repository/asset_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_notifier.g.dart';
part 'home_notifier.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(0) int pageIndex,
    @Default(<Event>[]) List<Event> events,
    @Default(AsyncValue<List<Shop>>.loading()) AsyncValue<List<Shop>> shops,
    Event? selectedEvent,
  }) = _HomeState;
}

@riverpod
class HomeNotifier extends _$HomeNotifier {
  @override
  HomeState build() {
    init();
    return const HomeState();
  }

  void init() async {
    final repository = ref.read(assetRepositoryProvider);
    final events = await repository.getEvents();
    final event = events[0];
    final shops = await repository.getShops(event.file);
    state = state.copyWith(
      selectedEvent: event,
      events: events,
      shops: AsyncValue.data(shops),
    );
  }

  void updateIndex(int index) {
    state = state.copyWith(pageIndex: index);
  }

  void updateSelectedEvent(Event event) async {
    final repository = ref.read(assetRepositoryProvider);
    final shops = await repository.getShops(event.file);
    state = state.copyWith(selectedEvent: event, shops: AsyncValue.data(shops));
  }
}
