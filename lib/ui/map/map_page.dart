import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fwf/data/model/menu.dart';
import 'package:fwf/data/model/shop.dart';
import 'package:fwf/ui/map/map_notifier.dart';
import 'package:fwf/util.dart';
import 'package:latlong2/latlong.dart';
import 'package:vector_map_tiles/vector_map_tiles.dart';

class MapPage extends StatelessWidget {
  final List<Shop> shops;

  MapPage({Key? key, required this.shops}) : super(key: key);

  Widget _createListItem(BuildContext context, Menu menu) {
    return InkWell(
      onTap: () => openCustomTab(context, menu.link),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          spacing: 16.0,
          children: [
            Flexible(
              flex: 1,
              child: SizedBox.square(
                dimension: 60.0,
                child: Image.memory(
                  base64Decode(menu.image),
                  fit: BoxFit.contain,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ),
            Flexible(
              flex: 4,
              child: Column(
                spacing: 4.0,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(menu.name),
                  if (menu.text.isNotEmpty)
                    Text(
                      menu.text.trim(),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  Text(
                    '¥${menu.value}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showModalBottomSheet(BuildContext ctx, Shop shop) {
    showModalBottomSheet(
      context: ctx,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (BuildContext _) {
        return ListView.builder(
          itemCount: shop.menus.length + 1,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Container(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Text(
                    shop.name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              );
            }
            index -= 1;
            return _createListItem(context, shop.menus[index]);
          },
        );
      },
    );
  }

  List<Marker> _createMarker(BuildContext context, List<Shop> shops) {
    final markers = <Marker>[];
    for (var s in shops) {
      final size = (40 * s.menus.length).toDouble();
      markers.add(
        Marker(
          width: size,
          height: size,
          rotate: true,
          point: LatLng(s.lat, s.lng),
          child: GestureDetector(
            child: Row(
              children: s.menus
                  .map(
                    (m) => Expanded(
                      child: SizedBox.square(
                        dimension: 40.0,
                        child: Image.memory(
                          base64Decode(m.image),
                          fit: BoxFit.contain,
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            onTap: () => _showModalBottomSheet(context, s),
          ),
        ),
      );
    }
    return markers;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final controller = ref.read(mapProvider.select((v) => v.controller));
        final style = ref.watch(mapProvider.select((v) => v.style));

        return switch (style) {
          AsyncData(:final value) => FlutterMap(
            mapController: controller,
            options: MapOptions(
              initialCenter: const LatLng(35.629498, 139.8810311),
              initialZoom: 16.0,
            ),
            children: [
              VectorTileLayer(
                theme: value.theme,
                tileOffset: TileOffset.DEFAULT,
                tileProviders: value.providers,
                fileCacheTtl: Duration(days: 60),
              ),
              RichAttributionWidget(
                animationConfig: const ScaleRAWA(),
                attributions: [
                  TextSourceAttribution('OpenStreetMap contributors'),
                ],
              ),
              MarkerLayer(markers: _createMarker(context, shops)),
            ],
          ),
          AsyncError() => const Text('Oops, something unexpected happened'),
          _ => const CircularProgressIndicator(),
        };
      },
    );
  }
}
