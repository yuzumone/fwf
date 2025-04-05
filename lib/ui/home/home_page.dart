import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fwf/ui/home/home_notifier.dart';
import 'package:fwf/ui/list/list_page.dart';
import 'package:fwf/ui/map/map_page.dart';

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

    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Maihama Food Guide')),
        body: switch (shops) {
          AsyncData(:final value) => switch (pageIndex) {
            0 => ListPage(shops: value),
            1 => MapPage(shops: value),
            _ => Container(),
          },
          AsyncError(:final error) => Text(error.toString()),
          _ => const CircularProgressIndicator(),
        },
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
      ),
    );
  }
}
