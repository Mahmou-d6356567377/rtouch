import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/UI/main_screans/cart/screens/addresses_screen/widgets/address_item.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';
import 'package:rtouch/help/routes/app_routes.dart';

class AddressesScreen extends StatelessWidget {
  const AddressesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              size: 25,
              color: const Color(kmaincolor),
            )),
        centerTitle: true,
        title: Text(
          'عناوين',
          style: arabicstyle8.copyWith(fontSize: 25),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                AddressItem(),
                AddressItem(),
                AddressItem(),
                AddressItem(),
                AddressItem(),
                AddressItem(),
                AddressItem(),
                AddressItem(),
              ],
            ),
          ),
          Positioned(
            bottom: 60,
            left: 40,
            child: FloatingActionButton(
              backgroundColor: const Color(kmaincolor),
              onPressed: () {
                GoRouter.of(context).push(AppRoutes.cas);
              },
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
