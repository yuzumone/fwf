// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(assetRepository)
final assetRepositoryProvider = AssetRepositoryProvider._();

final class AssetRepositoryProvider
    extends
        $FunctionalProvider<
          AssetRepositoryBase,
          AssetRepositoryBase,
          AssetRepositoryBase
        >
    with $Provider<AssetRepositoryBase> {
  AssetRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'assetRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$assetRepositoryHash();

  @$internal
  @override
  $ProviderElement<AssetRepositoryBase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AssetRepositoryBase create(Ref ref) {
    return assetRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AssetRepositoryBase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AssetRepositoryBase>(value),
    );
  }
}

String _$assetRepositoryHash() => r'22a4c6bc7590587a4ec3701c3b7066f750aac298';
