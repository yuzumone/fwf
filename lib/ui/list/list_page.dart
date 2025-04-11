import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:fwf/data/model/shop.dart';
import 'package:fwf/util.dart';

class ListPage extends StatelessWidget {
  final List<Shop> shops;

  ListPage({Key? key, required this.shops}) : super(key: key);

  List<Widget> _createStickeyList(BuildContext context, List<Shop> shops) {
    final List<Widget> widgets = [];
    for (var shop in shops) {
      widgets.add(
        SliverStickyHeader(
          header: Container(
            height: 40.0,
            color: Theme.of(context).colorScheme.surfaceContainerHigh,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.centerLeft,
            child: Text(shop.name),
          ),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, i) => ListTile(
                onTap: () => openCustomTab(context, shop.menus[i].link),
                leading: Image.memory(base64Decode(shop.menus[i].image)),
                title: Text(shop.menus[i].name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4.0,
                  children: [
                    Text(shop.menus[i].text.trim()),
                    Text('¥${shop.menus[i].value}'),
                  ],
                ),
              ),
              childCount: shop.menus.length,
            ),
          ),
        ),
      );
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: _createStickeyList(context, shops));
  }
}
