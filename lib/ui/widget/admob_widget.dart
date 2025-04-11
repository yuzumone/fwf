import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'admob_widget.g.dart';
part 'admob_widget.freezed.dart';

const _bannerAdUnitId = String.fromEnvironment(
  'BANNER_ADUNIT_ID',
  defaultValue: 'ca-app-pub-3940256099942544/6300978111',
);

@freezed
abstract class AdState with _$AdState {
  const factory AdState({@Default(true) bool enableAd, BannerAd? bannerAd}) =
      _AdState;
}

@riverpod
class AdNotifier extends _$AdNotifier {
  @override
  AdState build() {
    if (_bannerAdUnitId == 'disable') {
      return const AdState(enableAd: false);
    } else {
      initAd();
    }
    return const AdState();
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
}

class AdmobWidget extends StatelessWidget {
  const AdmobWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final ad = ref.watch(adNotifierProvider.select((v) => v.bannerAd));
        final enableAd = ref.watch(
          adNotifierProvider.select((v) => v.enableAd),
        );
        return Visibility(
          visible: enableAd,
          child:
              ad != null
                  ? SizedBox(
                    height: ad.size.height.toDouble(),
                    width: ad.size.width.toDouble(),
                    child: AdWidget(ad: ad),
                  )
                  : SizedBox(height: 50.0),
        );
      },
    );
  }
}
