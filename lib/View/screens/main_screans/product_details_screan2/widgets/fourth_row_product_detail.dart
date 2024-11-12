import 'package:flutter/material.dart';
import 'package:rtouch/View/pub_widgets/add_to_cart_button.dart';

import 'package:rtouch/Core/fonts/fonts.dart';

class FourthRowProductDetails extends StatelessWidget {
  const FourthRowProductDetails({
    super.key,
    required this.price,
  });
  final int price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const AddToCartButton(),
        Text(
          ' ريال ',
          style: arabicstyle5.copyWith(fontSize: 15),
        ),
        Text(
          price.toString(),
          style: arabicstyle5.copyWith(fontSize: 15),
        ),
      ],
    );
  }
}
