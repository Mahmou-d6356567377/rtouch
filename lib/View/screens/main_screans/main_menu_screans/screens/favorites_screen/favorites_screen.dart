import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/Core/fonts/fonts.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'المفضلة',
          style: arabicstyle5.copyWith(fontSize: 20),
        ),
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
            centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row( mainAxisAlignment: MainAxisAlignment.center , children: [Text('عفوا', style: arabicstyle8.copyWith(fontSize: 22),)],),
          Row( mainAxisAlignment: MainAxisAlignment.center , children: [Text('قائمة المفضلة فارغة', style: arabicstyle8.copyWith(fontSize: 22),)],),
        ],
      ),
    );
  }
}
