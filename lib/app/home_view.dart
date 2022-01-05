import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iitb_assignment/app/drawer_tile.dart';

class HomeView extends StatelessWidget {
  final mockTiles = List.generate(10, (index) => const DrawerTile());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          children: mockTiles,
        ),
      ),
    );
  }
}
