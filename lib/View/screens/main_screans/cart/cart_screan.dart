import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/View/pub_widgets/buttons/fac_method_buttons/abstract_buttons_class.dart';
import 'package:rtouch/View/pub_widgets/buttons/fac_method_buttons/factory_class.dart';
import 'package:rtouch/View/screens/main_screans/cart/widgets/cart_data_container.dart';
import 'package:rtouch/View/screens/main_screans/cart/widgets/cart_product_item.dart';
import 'package:rtouch/Core/constants/constants.dart';
import 'package:rtouch/Core/fonts/fonts.dart';
import 'package:rtouch/Routes/routes/app_routes.dart';

class CartScrean extends StatelessWidget {
  const CartScrean({super.key});

  @override
  Widget build(BuildContext context) {
    final CustomButton button =
        CustomButtonFactory.createButton('CustomButton1');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'السلة',
          style: arabicstyle5.copyWith(fontSize: 25),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRoutes.cs4);
              },
              icon: const Icon(
                Icons.chat,
                color: Color(kmaincolor),
              ))
        ],
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 25,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CartProductItem(),
            const CartProductItem(),
            const CartDataContainer(),
            const Row(
              children: [
                Icon(
                  Icons.question_mark,
                  color: Color(kmaincolor),
                ),
                Text(
                  'Delivery Address',
                  style: TextStyle(
                    color: Color(
                      kmaincolor,
                    ),
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  'Delivery Address',
                  style: TextStyle(
                    color: kgoldenColor,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRoutes.as);
              },
              child: Container(
                height: 60,
                margin: const EdgeInsets.all(10),
                width: MediaQuery.sizeOf(context).width,
                decoration: kmainBoxDecoration3,
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '  Please choose an address',
                      style: arabicstyle4.copyWith(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    )),
              ),
            ),
            Container(
              height: 150,
              margin: const EdgeInsets.all(10),
              width: MediaQuery.sizeOf(context).width,
              decoration: kmainBoxDecoration3,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      Text(
                        '  Riyadh',
                        style: arabicstyle4.copyWith(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '  Please choose an address Please choose an address Please choose an address Please choose an addressPlease choose an address',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: arabicstyle4.copyWith(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  )),
            ),
            button.button('Buy', () {
                  GoRouter.of(context).push(AppRoutes.ps);
                }),
          ],
       ),
           
      ),
    );
  }
}
