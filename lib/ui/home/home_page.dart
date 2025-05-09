import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fwf/ui/home/home_notifier.dart';
import 'package:fwf/ui/list/list_page.dart';
import 'package:fwf/ui/map/map_page.dart';
import 'package:fwf/ui/widget/admob_widget.dart';
import 'package:package_info_plus/package_info_plus.dart';

const _legalease = '''このアプリは株式会社オリエンタルランドまたウォルト・ディズニー・カンパニーとは関係がありません。
メニュー画像は東京ディズニーリゾート公式 Web ページからの引用です。''';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(homeNotifierProvider.notifier);
    final pageIndex = ref.watch(
      homeNotifierProvider.select((v) => v.pageIndex),
    );
    final events = ref.watch(homeNotifierProvider.select((v) => v.events));
    final shops = ref.watch(homeNotifierProvider.select((v) => v.shops));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Maihama Food Guide'),
        actions: [
          PopupMenuButton(
            onSelected:
                (selected) => switch (selected) {
                  0 => showDialog(
                    context: context,
                    builder:
                        (BuildContext ctx) => SimpleDialog(
                          title: const Text('Select evnet'),
                          children:
                              events
                                  .map(
                                    (e) => SimpleDialogOption(
                                      child: Text(e.name),
                                      onPressed: () {
                                        notifier.updateSelectedEvent(e);
                                        Navigator.of(ctx).pop();
                                      },
                                    ),
                                  )
                                  .toList(),
                        ),
                  ),
                  1 => PackageInfo.fromPlatform().then(
                    (value) => showAboutDialog(
                      context: context,
                      applicationName: value.appName,
                      applicationVersion: value.version,
                      applicationIcon: SvgPicture.asset(
                        'assets/icon.svg',
                        width: 48.0,
                        height: 48.0,
                      ),
                      applicationLegalese: _legalease,
                    ),
                  ),
                  _ => (),
                },
            itemBuilder:
                (_) => const [
                  PopupMenuItem(value: 0, child: Text('イベント選択')),
                  PopupMenuItem(value: 1, child: Text('License')),
                ],
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: switch (shops) {
              AsyncData(:final value) => IndexedStack(
                index: pageIndex,
                children: [ListPage(shops: value), MapPage(shops: value)],
              ),
              AsyncError(:final error) => Text(error.toString()),
              _ => const CircularProgressIndicator(),
            },
          ),
          AdmobWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
        ],
        currentIndex: pageIndex,
        onTap: (index) {
          notifier.updateIndex(index);
        },
      ),
    );
  }
}
