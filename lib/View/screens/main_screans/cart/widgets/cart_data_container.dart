
import 'package:flutter/material.dart';
import 'package:rtouch/View/screens/main_screans/cart/widgets/cart_container_data_row.dart';
import 'package:rtouch/Core/constants/constants.dart';
import 'package:rtouch/Core/fonts/fonts.dart';

class CartDataContainer extends StatelessWidget {
  const CartDataContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 400,
      width: MediaQuery.sizeOf(context).width,
      decoration: kmainboxDecoration2,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Order Summary', style: arabicstyle5.copyWith(fontSize: 18),),
              ],
            ),
          ),
          const CartContainerDataRow(txt1: 'Number of Products:', txt2: '2'),
          const Divider(),
         const CartContainerDataRow(txt1: 'Product Price:', txt2: '405.00 RS'),
          const Divider(),
           const CartContainerDataRow(txt1: 'Tax Price:', txt2: '405.00 RS'),
          const Divider(),
           const CartContainerDataRow(txt1: 'Delivery Charges:', txt2: '405.00 RS'),
          const Divider(),
           const CartContainerDataRow(txt1: 'Total Price:', txt2: '405.00 RS'),
          const Divider(),
           const CartContainerDataRow(txt1: 'Order Status:', txt2: 'بانتظار الدفع'),
        
        ],
      ),
    );
  }
}