// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$assetRepositoryHash() => r'22a4c6bc7590587a4ec3701c3b7066f750aac298';

/// See also [assetRepository].
@ProviderFor(assetRepository)
final assetRepositoryProvider =
    AutoDisposeProvider<AssetRepositoryBase>.internal(
      assetRepository,
      name: r'assetRepositoryProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$assetRepositoryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AssetRepositoryRef = AutoDisposeProviderRef<AssetRepositoryBase>;
String _$eventsHash() => r'3dfcb58c58f7879ea24749c17811304a7795dc88';

/// See also [events].
@ProviderFor(events)
final eventsProvider = AutoDisposeFutureProvider<List<Event>>.internal(
  events,
  name: r'eventsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$eventsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef EventsRef = AutoDisposeFutureProviderRef<List<Event>>;
String _$shopsHash() => r'572e1f8cda5d5a74146d6f9c00b48b1644ce0cfc';

/// See also [shops].
@ProviderFor(shops)
final shopsProvider = AutoDisposeFutureProvider<List<Shop>>.internal(
  shops,
  name: r'shopsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$shopsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ShopsRef = AutoDisposeFutureProviderRef<List<Shop>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
