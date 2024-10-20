import 'package:flutter/material.dart';
import 'package:rtouch/help/constants/constants.dart';

class ProductDescRow extends StatelessWidget {
  const ProductDescRow({
    required this.productdescription,
    super.key,
  });
  final String productdescription;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: kmainboxDecoration,
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            productdescription,
            style: const TextStyle(
              fontFamily: kmainfont,
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
