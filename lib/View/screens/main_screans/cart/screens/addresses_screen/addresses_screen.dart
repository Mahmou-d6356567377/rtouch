import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/Routes/routes/app_routes.dart';
import 'package:rtouch/View/screens/main_screans/cart/screens/addresses_screen/widgets/address_item.dart';
import 'package:rtouch/Core/constants/constants.dart';
import 'package:rtouch/Core/fonts/fonts.dart';

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
            icon: const Icon(
              Icons.arrow_back,
              size: 25,
              color:  Color(kmaincolor),
            )),
        centerTitle: true,
        title: Text(
          'عناوين',
          style: arabicstyle8.copyWith(fontSize: 25),
        ),
      ),
      body: Stack(
        children: [
         const  SingleChildScrollView(
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
              child: const Icon(
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
