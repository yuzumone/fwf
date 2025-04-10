import 'package:fwf/data/model/event.dart';
import 'package:fwf/data/model/shop.dart';
import 'package:fwf/data/repository/asset_repository.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_notifier.g.dart';
part 'home_notifier.freezed.dart';

const _bannerAdUnitId = String.fromEnvironment(
  'BANNER_ADUNIT_ID',
  defaultValue: 'ca-app-pub-3940256099942544/6300978111',
);

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(0) int pageIndex,
    @Default(<Event>[]) List<Event> events,
    @Default(AsyncValue<List<Shop>>.loading()) AsyncValue<List<Shop>> shops,
    @Default(true) bool enableAd,
    Event? selectedEvent,
    BannerAd? bannerAd,
  }) = _HomeState;
}

@riverpod
class HomeNotifier extends _$HomeNotifier {
  @override
  HomeState build() {
    init();
    if (_bannerAdUnitId == 'disable') {
      return const HomeState(enableAd: false);
    } else {
      initAd();
    }
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

  void initAd() {
    BannerAd(
      adUnitId: _bannerAdUnitId,
      request: AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          state = state.copyWith(bannerAd: ad as BannerAd);
        },
        onAdFailedToLoad: (ad, err) {
          ad.dispose();
        },
      ),
    ).load();
  }

  void updateIndex(int index) {
    state = state.copyWith(pageIndex: index);
  }
}
