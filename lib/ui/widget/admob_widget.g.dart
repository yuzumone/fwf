// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admob_widget.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AdNotifier)
final adProvider = AdNotifierProvider._();

final class AdNotifierProvider extends $NotifierProvider<AdNotifier, AdState> {
  AdNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adNotifierHash();

  @$internal
  @override
  AdNotifier create() => AdNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AdState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AdState>(value),
    );
  }
}

String _$adNotifierHash() => r'da3ee8efd85d1fc093ca307036c27ca710bb6765';

abstract class _$AdNotifier extends $Notifier<AdState> {
  AdState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AdState, AdState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AdState, AdState>,
              AdState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
