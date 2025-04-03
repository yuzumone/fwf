import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fwf/data/model/event.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:fwf/data/model/shop.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yaml/yaml.dart';

part 'asset_repository.g.dart';

@riverpod
AssetRepositoryBase assetRepository(Ref ref) {
  return AssetRepository();
}

@riverpod
Future<List<Event>> events(Ref ref) async {
  final repository = ref.read(assetRepositoryProvider);
  return repository.getEvents();
}

@riverpod
Future<List<Shop>> shops(Ref ref) async {
  final repository = ref.read(assetRepositoryProvider);
  final events = await ref.watch(eventsProvider.future);
  return repository.getShops(events[0].file);
}

abstract interface class AssetRepositoryBase {
  Future<List<Event>> getEvents();
  Future<List<Shop>> getShops(String file);
}

class AssetRepository implements AssetRepositoryBase {
  @override
  Future<List<Event>> getEvents() async {
    final events = await rootBundle.loadString('assets/data/events.yaml');
    final doc = loadYaml(events);
    List<Event> result = [];
    for (var item in doc) {
      result.add(Event.fromJson(jsonDecode(jsonEncode(item))));
    }
    return result;
  }

  @override
  Future<List<Shop>> getShops(String file) async {
    final data = await rootBundle.loadString('assets/data/$file');
    final doc = loadYaml(data);
    List<Shop> result = [];
    for (var item in doc) {
      result.add(Shop.fromJson(jsonDecode(jsonEncode(item))));
    }
    return result;
  }
}
