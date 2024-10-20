import 'package:flutter/material.dart';
import 'package:rtouch/UI/main_screans/product_details_screan2/widgets/product_quantity_represent.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class ThirdRowProductDetial extends StatelessWidget {
  const ThirdRowProductDetial({
    super.key,
    required this.xLclicked, required this.quantity,
  });

  final bool xLclicked;
  final int quantity;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kmainboxDecoration,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Visibility(
            visible: xLclicked,
            child: Text(
              'عدد القطع المتوفرة',
              style: arabicstyle5.copyWith(fontSize: 18),
            ),
          ),
          Visibility(
              visible: xLclicked,
              child:  ProductQuantityRepresent(pquantity: quantity)),
          const SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'المقاس ',
              style: arabicstyle5.copyWith(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
