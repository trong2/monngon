import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:like_image/Widget/Swipe.dart';

import 'model/itemmodel.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<Item> Items = [
    Item(
        id: '1',
        name: 'Image 01',
        image: 'http://placeimg.com/640/480/fashion'),
    Item(
        id: '2',
        name: 'Image 02',
        image: 'http://placeimg.com/640/481/fashion'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
              padding: const EdgeInsets.all(12),
              child: Badge(
                  badgeContent: const Text('2'),
                  child: const Icon(Icons.favorite))),
          title: const Center(child: Text('favorite')),
          actions: <Widget>[
            // This button presents popup menu items.
            PopupMenuButton(
                // Callback that sets the selected popup menu item.

                itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                      const PopupMenuItem(
                        child: Text('Item 1'),
                      ),
                      const PopupMenuItem(
                        child: Text('Item 2'),
                      ),
                    ]),
          ],
        ),
        body: body_Swipe(items: Items));
  }
}
