import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fwf/data/model/event.dart';
import 'package:fwf/data/model/menu.dart';
import 'package:fwf/data/model/shop.dart';
import 'package:fwf/data/repository/asset_repository.dart';

import 'package:fwf/main.dart';
import 'package:mocktail/mocktail.dart';

class MockAssetRepository extends Mock implements AssetRepository {}

void main() {
  testWidgets('App widget test', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          assetRepositoryProvider.overrideWith((ref) {
            final mock = MockAssetRepository();
            when(() => mock.getEvents()).thenAnswer(
              (_) async => [Event(name: 'a', start: 0, end: 1, file: 'a')],
            );
            when(() => mock.getShops('a')).thenAnswer(
              (_) async => [
                Shop(
                  name: 'a',
                  aria: 'a',
                  lat: 0.0,
                  lng: 0.0,
                  menus: [
                    Menu(name: 'a', value: 1, link: 'a', text: 'a', image: 'a'),
                  ],
                ),
              ],
            );
            return mock;
          }),
        ],
        child: App(),
      ),
    );
  });
}
